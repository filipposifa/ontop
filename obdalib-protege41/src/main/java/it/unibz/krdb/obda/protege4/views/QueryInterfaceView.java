package it.unibz.krdb.obda.protege4.views;

/*
 * #%L
 * ontop-protege4
 * %%
 * Copyright (C) 2009 - 2013 KRDB Research Centre. Free University of Bozen Bolzano.
 * %%
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * #L%
 */

import it.unibz.krdb.obda.io.PrefixManager;
import it.unibz.krdb.obda.model.OBDAException;
import it.unibz.krdb.obda.model.impl.OBDAModelImpl;
import it.unibz.krdb.obda.owlapi3.OWLResultSetWriter;
import it.unibz.krdb.obda.owlrefplatform.core.queryevaluation.SPARQLQueryUtility;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWL;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLConnection;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLResultSet;
import it.unibz.krdb.obda.owlrefplatform.owlapi3.QuestOWLStatement;
import it.unibz.krdb.obda.protege4.core.OBDAModelManager;
import it.unibz.krdb.obda.protege4.core.OBDAModelManagerListener;
import it.unibz.krdb.obda.protege4.gui.OWLResultSetTableModel;
import it.unibz.krdb.obda.protege4.gui.action.OBDADataQueryAction;
import it.unibz.krdb.obda.protege4.gui.action.OBDASaveQueryResultToFileAction;
import it.unibz.krdb.obda.protege4.panels.QueryInterfacePanel;
import it.unibz.krdb.obda.protege4.panels.ResultViewTablePanel;
import it.unibz.krdb.obda.protege4.panels.SavedQueriesPanelListener;
import it.unibz.krdb.obda.protege4.utils.DialogUtils;
import it.unibz.krdb.obda.protege4.utils.OBDAProgessMonitor;
import it.unibz.krdb.obda.protege4.utils.OBDAProgressListener;
import it.unibz.krdb.obda.protege4.utils.TextMessageFrame;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.Writer;
import java.util.List;
import java.util.concurrent.CountDownLatch;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JSplitPane;
import javax.swing.table.DefaultTableModel;

import org.protege.editor.core.ProtegeManager;
import org.protege.editor.owl.ui.view.AbstractOWLViewComponent;
import org.semanticweb.owlapi.model.OWLAxiom;
import org.semanticweb.owlapi.model.OWLException;
import org.semanticweb.owlapi.model.OWLOntologyChange;
import org.semanticweb.owlapi.model.OWLOntologyChangeListener;
import org.semanticweb.owlapi.reasoner.OWLReasoner;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class QueryInterfaceView extends AbstractOWLViewComponent implements SavedQueriesPanelListener, OBDAModelManagerListener {

	private static final long serialVersionUID = 1L;

	private QueryInterfacePanel queryEditorPanel;

	private ResultViewTablePanel resultTablePanel;

	private OWLOntologyChangeListener ontologyListener;

	private OBDAModelManager obdaController;

	private PrefixManager prefixManager;

	private OWLResultSetTableModel tableModel;

	private static final Logger log = LoggerFactory.getLogger(QueryInterfaceView.class);

	private static String QUEST_START_MESSAGE = "Quest must be started before using this feature. To proceed \n * select Quest in the \"Reasoners\" menu and \n * click \"Start reasoner\" in the same menu.";

	@Override
	protected void disposeOWLView() {
		this.getOWLModelManager().removeOntologyChangeListener(ontologyListener);

		QueryInterfaceViewsList queryInterfaceViews = (QueryInterfaceViewsList) this.getOWLEditorKit().get(QueryInterfaceViewsList.class.getName());
		if ((queryInterfaceViews != null)) {
			queryInterfaceViews.remove(this);
		}

		QueryManagerViewsList queryManagerViews = (QueryManagerViewsList) this.getOWLEditorKit().get(QueryManagerViewsList.class.getName());
		if ((queryManagerViews != null) && (!queryManagerViews.isEmpty())) {
			for (QueryManagerView queryInterfaceView : queryManagerViews) {
				queryInterfaceView.removeListener(this);
			}
		}
		obdaController.removeListener(this);
	}

	@Override
	protected void initialiseOWLView() throws Exception {
		obdaController = (OBDAModelManager) getOWLEditorKit().get(OBDAModelImpl.class.getName());
		obdaController.addListener(this);

		prefixManager = obdaController.getActiveOBDAModel().getPrefixManager();

		queryEditorPanel = new QueryInterfacePanel(obdaController.getActiveOBDAModel(), obdaController.getQueryController());
		queryEditorPanel.setPreferredSize(new Dimension(400, 250));
		queryEditorPanel.setMinimumSize(new Dimension(400, 250));

		resultTablePanel = new ResultViewTablePanel(queryEditorPanel);
		resultTablePanel.setMinimumSize(new java.awt.Dimension(400, 250));
		resultTablePanel.setPreferredSize(new java.awt.Dimension(400, 250));

		JSplitPane splQueryInterface = new JSplitPane();
		splQueryInterface.setOrientation(JSplitPane.VERTICAL_SPLIT);
		splQueryInterface.setResizeWeight(0.5);
		splQueryInterface.setDividerLocation(0.5);
		splQueryInterface.setOneTouchExpandable(true);
		splQueryInterface.setTopComponent(queryEditorPanel);
		splQueryInterface.setBottomComponent(resultTablePanel);

		JPanel pnlQueryInterfacePane = new JPanel();
		pnlQueryInterfacePane.setLayout(new BorderLayout());
		pnlQueryInterfacePane.add(splQueryInterface, BorderLayout.CENTER);

		setLayout(new BorderLayout());		
		add(pnlQueryInterfacePane, BorderLayout.CENTER);

		// Setting up model listeners
		ontologyListener = new OWLOntologyChangeListener() {
			@Override
			public void ontologiesChanged(List<? extends OWLOntologyChange> changes) throws OWLException {
				resultTablePanel.setTableModel(new DefaultTableModel());
			}
		};
		this.getOWLModelManager().addOntologyChangeListener(ontologyListener);
		setupListeners();

		// Setting up actions for all the buttons of this view.
		resultTablePanel.setCountAllTuplesActionForUCQ(new OBDADataQueryAction() {
			@Override
			public long getExecutionTime() {
				return -1;
			}
			@Override
			public int getNumberOfRows() {
				return -1;
			}
			@Override
			public void run(String query) {
				OBDAProgessMonitor monitor = null;
				try {
					monitor = new OBDAProgessMonitor("Counting tuples...");
					CountDownLatch latch = new CountDownLatch(1);
					OWLReasoner reasoner = getOWLEditorKit().getModelManager().getOWLReasonerManager().getCurrentReasoner();
					if (reasoner instanceof QuestOWL) {
						QuestOWL dqr = (QuestOWL) reasoner;
						CountAllTuplesAction action = new CountAllTuplesAction(latch, query, dqr);
						observeQueryAction(latch, monitor, action);
						int result = action.getResult();
						updateTablePanelStatus(result);
					} else {
						
					}
				} catch (Exception e) {
					DialogUtils.showQuickErrorDialog(QueryInterfaceView.this, e);
				} finally {
					monitor.stop();
				}
			}
			@Override
			public boolean isRunning() {
				return false;
			}
		});

		queryEditorPanel.setExecuteUCQAction(new OBDADataQueryAction() {
			private long time = 0;
			private int rows = 0;
			@Override
			public void run(String query) {
				OBDAProgessMonitor monitor = null;
				try {
					monitor = new OBDAProgessMonitor("Executing queries...");
					monitor.start();
					removeResultTable();
					CountDownLatch latch = new CountDownLatch(1);
					SPARQLQueryUtility internalQuery = new SPARQLQueryUtility(query);
					OWLReasoner reasoner = getOWLEditorKit().getModelManager().getOWLReasonerManager().getCurrentReasoner();
					if (reasoner instanceof QuestOWL) {
						QuestOWL dqr = (QuestOWL) reasoner;
						if (internalQuery.isSelectQuery() || internalQuery.isAskQuery()) {
							ExecuteSelectQueryAction action = new ExecuteSelectQueryAction(latch, internalQuery, dqr);
							long runtime = observeQueryAction(latch, monitor, action);
							QuestOWLResultSet result = action.getResult();
							if(!action.isCancelled() && !(result == null && action.isErrorShown())){
								time = runtime;
								createTableModelFromResultSet(result);
								showTupleResultInTablePanel();
							}
						} else if (internalQuery.isConstructQuery() || internalQuery.isDescribeQuery()) {
							ExecuteGraphQueryAction action = new ExecuteGraphQueryAction(latch, internalQuery, dqr);
							time = observeQueryAction(latch, monitor, action);
							List<OWLAxiom> result = action.getResult();
							OWLAxiomToTurtleVisitor owlVisitor = new OWLAxiomToTurtleVisitor(prefixManager);
							populateResultUsingVisitor(result, owlVisitor);
							showGraphResultInTextPanel(owlVisitor);
							rows = result.size();
						}
					} else /* reasoner not QuestOWL */ {
						JOptionPane.showMessageDialog(
								null,
								QUEST_START_MESSAGE);
					}
				} catch (Exception e) {
					DialogUtils.showQuickErrorDialog(QueryInterfaceView.this, e);
				} finally {
					monitor.stop();
				}
			}
			@Override
			public long getExecutionTime() {
				return time;
			}
			@Override
			public int getNumberOfRows() {
				OWLResultSetTableModel tm = getTableModel();
				if (tm == null)
					return 0;
				return getTableModel().getRowCount();
			}
			public boolean isRunning(){
				OWLResultSetTableModel tm = getTableModel();
				if (tm == null)
					return false;
				return tm.isFetching();
			}
		});

		queryEditorPanel.setRetrieveUCQExpansionAction(new OBDADataQueryAction() {
			private long time = 0;
			@Override
			public void run(String query) {
				OBDAProgessMonitor monitor = null;
				OWLReasoner reasoner = getOWLEditorKit().getModelManager().getOWLReasonerManager().getCurrentReasoner();
				if (reasoner instanceof QuestOWL) {
					QuestOWL dqr = (QuestOWL) reasoner;
					try {
						monitor = new OBDAProgessMonitor("Rewriting query...");
						CountDownLatch latch = new CountDownLatch(1);
						ExpandQueryAction action = new ExpandQueryAction(latch, query, dqr);
						time = observeQueryAction(latch, monitor, action);
						String result = action.getResult();
						showActionResultInTextPanel("UCQ Expansion Result", result);

					} catch (InterruptedException e) {
						DialogUtils.showQuickErrorDialog(QueryInterfaceView.this, e);
					}finally {
						monitor.stop();
					}
				} else {
					JOptionPane.showMessageDialog(
							null,
							QUEST_START_MESSAGE);
				}
			}
			@Override
			public long getExecutionTime() {
				return time;
			}
			@Override
			public int getNumberOfRows() {
				return -1;
			}
			@Override
			public boolean isRunning() {
				return false;
			}
		});

		queryEditorPanel.setRetrieveUCQUnfoldingAction(new OBDADataQueryAction() {
			private long time = 0;
			@Override
			public void run(String query) {
				OBDAProgessMonitor monitor = null;
				OWLReasoner reasoner = getOWLEditorKit().getModelManager().getOWLReasonerManager().getCurrentReasoner();
				if (reasoner instanceof QuestOWL) {
					QuestOWL dqr = (QuestOWL) reasoner;
					try {
						monitor = new OBDAProgessMonitor("Unfolding queries...");
						CountDownLatch latch = new CountDownLatch(1);
						UnfoldQueryAction action = new UnfoldQueryAction(latch, query,dqr);
						time = observeQueryAction(latch, monitor, action);
						String result = action.getResult();
						showActionResultInTextPanel("UCQ Unfolding Result", result);
					} catch (InterruptedException e) {
						DialogUtils.showQuickErrorDialog(QueryInterfaceView.this, e);
					}finally {
						monitor.stop();
					}
				} else {
					JOptionPane.showMessageDialog(
							null,
							QUEST_START_MESSAGE);
				}
			}
			@Override
			public long getExecutionTime() {
				return time;
			}
			@Override
			public int getNumberOfRows() {
				return -1;
			}
			@Override
			public boolean isRunning() {
				return false;
			}
		});

		resultTablePanel.setOBDASaveQueryToFileAction(new OBDASaveQueryResultToFileAction() {
			@Override
			public void run(String fileLocation) {
				OBDAProgessMonitor monitor = null;
				try {
					monitor = new OBDAProgessMonitor("Writing output files...");
					monitor.start();
					CountDownLatch latch = new CountDownLatch(1);
					List<String[]> data = tableModel.getTabularData();
					if(monitor.isCanceled())
						return;
					File output = new File(fileLocation);
					BufferedWriter writer = new BufferedWriter(new FileWriter(output, false));
					SaveQueryToFileAction action = new SaveQueryToFileAction(latch, data, writer);
					monitor.addProgressListener(action);
					action.run();
					latch.await();
					monitor.stop();
				} catch (Exception e) {
					DialogUtils.showQuickErrorDialog(QueryInterfaceView.this, e);
				}
			}
		});
		log.debug("Query Manager view initialized");
	}

		/**
		 * Calls run on a QueryAction, adds the monitor, and times the whole thing.
		 */
		protected long observeQueryAction(CountDownLatch latch, OBDAProgessMonitor monitor, QuestQueryAction<?> action) throws InterruptedException {
			monitor.addProgressListener(action);
			long startTime = System.currentTimeMillis();
			action.run();
			latch.await();
			monitor.stop();
			return System.currentTimeMillis() - startTime;
	}

	private void showActionResultInTextPanel(String title, String result) {

		if (result == null) {
			return;
		}
		TextMessageFrame panel = new TextMessageFrame(title);
		JFrame protegeFrame = ProtegeManager.getInstance().getFrame(getWorkspace());
		DialogUtils.centerDialogWRTParent(protegeFrame, panel);
		DialogUtils.installEscapeCloseOperation(panel);
		OBDADataQueryAction action = queryEditorPanel.getRetrieveUCQExpansionAction();
		panel.setTextMessage(result);
		panel.setTimeProcessingMessage(String.format("Amount of processing time: %s sec", action.getExecutionTime()/1000));
		panel.setVisible(true);
	}

	protected void updateTablePanelStatus(int result) {
		if (result != -1) {
			queryEditorPanel.updateStatus(result);
		}		
	}

	private int showTupleResultInTablePanel() throws OWLException {
		OWLResultSetTableModel currentTableModel = getTableModel();
		if (currentTableModel != null) {
			resultTablePanel.setTableModel(currentTableModel);
			return currentTableModel.getRowCount();
		} else {
			return 0;
		}
	}

	private void createTableModelFromResultSet(QuestOWLResultSet result) throws OWLException {
		if (result == null)
			throw new NullPointerException("An error occured. createTableModelFromResultSet cannot use a null QuestOWLResultSet");
		if (result != null) {
			tableModel = new OWLResultSetTableModel(result, prefixManager, 
					queryEditorPanel.isShortURISelect(),
					queryEditorPanel.isFetchAllSelect(),
					queryEditorPanel.getFetchSize());
			tableModel.addTableModelListener(queryEditorPanel);
		}
	}

	/**
	 * removes the result table. 
	 * Could be called at data query execution, or at cancelling
	 * Not necessary when replacing with a new result, just to remove old 
	 * results that are outdated 
	 */
	private void removeResultTable(){
		OWLResultSetTableModel tm = getTableModel();
		if (tm != null){
			tm.close();
		}
	}

	private OWLResultSetTableModel getTableModel() {
		return tableModel;
	}

	private void showGraphResultInTextPanel(OWLAxiomToTurtleVisitor visitor) {
		try {
			TextMessageFrame panel = new TextMessageFrame("Query Result");
			JFrame protegeFrame = ProtegeManager.getInstance().getFrame(getWorkspace());
			DialogUtils.centerDialogWRTParent(protegeFrame, panel);
			DialogUtils.installEscapeCloseOperation(panel);
			panel.setTextMessage(visitor.getString());
			panel.setVisible(true);
		} catch (Exception e) {
			DialogUtils.showQuickErrorDialog(QueryInterfaceView.this, e);
		}

	}

	private void populateResultUsingVisitor(List<OWLAxiom> result, OWLAxiomToTurtleVisitor visitor) {
		if (result != null) {
			for (OWLAxiom axiom : result) {
				axiom.accept(visitor);
			}
		}
	}

	public void selectedQuerychanged(String new_group, String new_query, String new_id) {
		this.queryEditorPanel.selectedQuerychanged(new_group, new_query, new_id);
	}

	/**
	 * On creation of a new view, we register it globally and make sure that its selector is listened 
	 * by all other instances of query view in this editor kit. Also, we make this new instance listen 
	 * to the selection of all other query selectors in the views.
	 */
	public void setupListeners() {

		// Getting the list of views
		QueryInterfaceViewsList queryInterfaceViews = (QueryInterfaceViewsList) this.getOWLEditorKit().get(QueryInterfaceViewsList.class.getName());
		if ((queryInterfaceViews == null)) {
			queryInterfaceViews = new QueryInterfaceViewsList();
			getOWLEditorKit().put(QueryInterfaceViewsList.class.getName(), queryInterfaceViews);
		}

		// Adding the new instance (this)
		queryInterfaceViews.add(this);

		// Registring the current query view with all existing query manager views
		QueryManagerViewsList queryManagerViews = (QueryManagerViewsList) this.getOWLEditorKit().get(QueryManagerViewsList.class.getName());
		if ((queryManagerViews != null) && (!queryManagerViews.isEmpty())) {
			for (QueryManagerView queryInterfaceView : queryManagerViews) {
				queryInterfaceView.addListener(this);
			}
		}
	}

	private class UnfoldQueryAction extends QuestQueryAction<String> {
		
		public UnfoldQueryAction(CountDownLatch l, String q, QuestOWL r) {
			super(l, q, r);
		}

		@Override
		public String executeQuery(QuestOWLStatement st, String query) throws OWLException{
			return st.getUnfolding(query);
		}
	}

	private class ExpandQueryAction extends QuestQueryAction<String> {
		
		public ExpandQueryAction(CountDownLatch l, String q, QuestOWL r) {
			super(l, q, r);
		}

		@Override
		public String executeQuery(QuestOWLStatement st, String query) throws OWLException {
			return st.getRewriting(query);
		}
	}

	
	private class ExecuteSelectQueryAction extends QuestQueryAction<QuestOWLResultSet> {

		
		public ExecuteSelectQueryAction(CountDownLatch l, SPARQLQueryUtility q, QuestOWL r) {
			super(l,q, r);
		}
		
		public QuestOWLResultSet executeQuery(QuestOWLStatement st, String queryString) throws OWLException {
			return st.executeTuple(queryString); 
		}

	}
	
	protected class ExecuteGraphQueryAction extends QuestQueryAction<List<OWLAxiom>> {

		
		protected ExecuteGraphQueryAction(CountDownLatch l, SPARQLQueryUtility q, QuestOWL reasoner) {
			super(l,q, reasoner);
		}
		
		public List<OWLAxiom> executeQuery(QuestOWLStatement st, String queryString) throws OWLException {
			return st.executeGraph(queryString); 
		}

	}
	
	private class CountAllTuplesAction extends QuestQueryAction<Integer>{

		private CountAllTuplesAction(CountDownLatch latch, String query, QuestOWL reasoner) {
			super(latch, query, reasoner);
		}

		@Override
		public Integer executeQuery(QuestOWLStatement st, String query) throws OWLException {
			return st.getTupleCount(query);
		}
	}

	private class SaveQueryToFileAction implements OBDAProgressListener {

		private CountDownLatch latch;
		private Thread thread;
		private List<String[]> rawData;
		private Writer writer;
		private boolean isCancelled;
		private boolean errorShown;
		
		private SaveQueryToFileAction(CountDownLatch latch, List<String[]> rawData, Writer writer) {
			this.latch = latch;
			this.rawData = rawData;
			this.writer = writer;
			this.errorShown = false;
			this.isCancelled = false;
		}

		public void run() {
			thread = new Thread() {
				@Override
				public void run() {
					try {
						OWLResultSetWriter.writeCSV(rawData, writer);
						latch.countDown();
					} catch (Exception e) {
						if(!isCancelled()){
							errorShown = true;
							latch.countDown();
							log.error(e.getMessage());
							DialogUtils.showQuickErrorDialog(null, e, "Error while writing output file.");
						}
					}
				}
			};
			thread.start();
		}

		@Override
		public void actionCanceled() throws Exception {
			this.isCancelled = true;
			try {
				writer.flush();
				writer.close();
				latch.countDown();
				log.info("Writing operation cancelled by users.");
			} catch (Exception e) {
				latch.countDown();
				DialogUtils.showQuickErrorDialog(null, e, "Error during cancel action.");
			}
		}

		@Override
		public boolean isCancelled() {
			return this.isCancelled;
		}

		@Override
		public boolean isErrorShown() {
			return this.errorShown;
		}
	}

	@Override
	public void activeOntologyChanged() {
		queryEditorPanel.setOBDAModel(this.obdaController.getActiveOBDAModel());
	}
}
