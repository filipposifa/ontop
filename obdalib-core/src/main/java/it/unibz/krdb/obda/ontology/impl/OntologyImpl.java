package it.unibz.krdb.obda.ontology.impl;

/*
 * #%L
 * ontop-obdalib-core
 * %%
 * Copyright (C) 2009 - 2014 Free University of Bozen-Bolzano
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

import it.unibz.krdb.obda.model.DatatypeFactory;
import it.unibz.krdb.obda.model.OBDADataFactory;
import it.unibz.krdb.obda.model.Predicate;
import it.unibz.krdb.obda.model.Predicate.COL_TYPE;
import it.unibz.krdb.obda.model.impl.OBDADataFactoryImpl;
import it.unibz.krdb.obda.ontology.ClassAssertion;
import it.unibz.krdb.obda.ontology.DataPropertyAssertion;
import it.unibz.krdb.obda.ontology.DataPropertyExpression;
import it.unibz.krdb.obda.ontology.DataPropertyRangeExpression;
import it.unibz.krdb.obda.ontology.DataRangeExpression;
import it.unibz.krdb.obda.ontology.DataSomeValuesFrom;
import it.unibz.krdb.obda.ontology.Datatype;
import it.unibz.krdb.obda.ontology.ImmutableOntologyVocabulary;
import it.unibz.krdb.obda.ontology.NaryAxiom;
import it.unibz.krdb.obda.ontology.OClass;
import it.unibz.krdb.obda.ontology.ObjectPropertyAssertion;
import it.unibz.krdb.obda.ontology.ObjectPropertyExpression;
import it.unibz.krdb.obda.ontology.ObjectSomeValuesFrom;
import it.unibz.krdb.obda.ontology.Ontology;
import it.unibz.krdb.obda.ontology.ClassExpression;
import it.unibz.krdb.obda.ontology.BinaryAxiom;


import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;

public class OntologyImpl implements Ontology {

	private static final long serialVersionUID = 758424053258299151L;
	
	private static final OBDADataFactory obdafac = OBDADataFactoryImpl.getInstance();
	
	private final ImmutableOntologyVocabularyImpl vocabulary;
	
	// axioms 

	private final List<BinaryAxiom<ClassExpression>> subClassAxioms = new ArrayList<>();
	private final List<BinaryAxiom<DataRangeExpression>> subDataRangeAxioms = new ArrayList<>();
	private final List<BinaryAxiom<ObjectPropertyExpression>> subObjectPropertyAxioms = new ArrayList<>();
	private final List<BinaryAxiom<DataPropertyExpression>> subDataPropertyAxioms = new ArrayList<>();

	private final List<NaryAxiom<ClassExpression>> disjointClassesAxioms = new ArrayList<>();
	private final List<NaryAxiom<ObjectPropertyExpression>> disjointObjectPropertiesAxioms = new ArrayList<>();
	private final List<NaryAxiom<DataPropertyExpression>> disjointDataPropertiesAxioms = new ArrayList<>();
	
	private final Set<ObjectPropertyExpression> functionalObjectPropertyAxioms = new LinkedHashSet<>();
	private final Set<DataPropertyExpression> functionalDataPropertyAxioms = new LinkedHashSet<>();
	
	// assertions
	
	private final List<ClassAssertion> classAssertions = new ArrayList<>();
	private final List<ObjectPropertyAssertion> objectPropertyAssertions = new ArrayList<>();
	private final List<DataPropertyAssertion> dataPropertyAssertions = new ArrayList<>();

	// auxiliary symbols (for normalization)
	
	private final Set<ObjectPropertyExpression> auxObjectProperties = new HashSet<>();
	private final Set<DataPropertyExpression> auxDataProperties = new HashSet<>();
	
	private static final String AUXROLEURI = "ER.A-AUXROLE"; 
	private int auxCounter = 0; 
	
	// exception messages
	
	private static final String CLASS_NOT_FOUND = "Class not found: ";	
	private static final String OBJECT_PROPERTY_NOT_FOUND = "ObjectProperty not found: ";
	private static final String DATA_PROPERTY_NOT_FOUND = "DataProperty not found: ";
	private static final String DATATYPE_NOT_FOUND = "Datatype not found: ";
	
	public static final ImmutableMap<String, Datatype> OWL2QLDatatypes;
	
	private static final String xml  = "http://www.w3.org/1999/02/22-rdf-syntax-ns";
	private static final String rdfs = "http://www.w3.org/2000/01/rdf-schema";	
	private static final String owl = "http://www.w3.org/2002/07/owl";
	private static final String xsd = "http://www.w3.org/2001/XMLSchema";
	
	static {
		DatatypeFactory ofac = obdafac.getDatatypeFactory();
		
		OWL2QLDatatypes = ImmutableMap.<String, Datatype>builder()
				.put(xml + "#PlainLiteral", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.LITERAL))) // 	rdf:PlainLiteral
				.put(xml + "#XMLLiteral", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) //	rdf:XMLLiteral
				.put(rdfs + "#Literal", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.LITERAL))) //		rdfs:Literal
				.put(owl + "#real", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.DECIMAL))) // 			owl:real
				.put(owl + "#rational", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.DECIMAL))) // 		owl:rational		
				.put(xsd + "#decimal", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.DECIMAL))) // 	xsd:decimal
				.put(xsd + "#integer", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.INTEGER))) // 	xsd:integer
				.put(xsd + "#nonNegativeInteger", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.NON_NEGATIVE_INTEGER))) // 	xsd:nonNegativeInteger
				.put(xsd + "#string", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:string
				.put(xsd + "#normalizedString", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:normalizedString
				.put(xsd + "#token", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:token
				.put(xsd + "#Name", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:Name
				.put(xsd + "#NCName", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) //	xsd:NCName
				.put(xsd + "#NMTOKEN", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:NMTOKEN
				.put(xsd + "#hexBinary", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:hexBinary
				.put(xsd + "#base64Binary", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:base64Binary
				.put(xsd + "#anyURI", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.STRING))) // 	xsd:anyURI
				.put(xsd + "#dateTime", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.DATETIME))) // 	xsd:dateTime
				.put(xsd + "#dateTimeStamp", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.DATETIME_STAMP))) // 	xsd:dateTimeStamp
				.put(xsd + "#int", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.INT))) // 	TEMPORARY FOR Q9 / FISHMARK
				.put(xsd + "#long", new DatatypeImpl(ofac.getTypePredicate(COL_TYPE.LONG))) // 	TEMPORARY FOR OntologyTypesTest
				.build();
	}
	
	
	
	private final class ImmutableOntologyVocabularyImpl implements ImmutableOntologyVocabulary {

		final ImmutableMap<String, OClass> concepts;
		final ImmutableMap<String, ObjectPropertyExpression> objectProperties;
		final ImmutableMap<String, DataPropertyExpression> dataProperties;
		
		ImmutableOntologyVocabularyImpl(OntologyVocabularyImpl voc) {
			concepts = ImmutableMap.<String, OClass>builder()
				.putAll(voc.concepts)
				.put(ClassImpl.owlThingIRI, ClassImpl.owlThing)
				.put(ClassImpl.owlNothingIRI, ClassImpl.owlNothing).build();
			objectProperties = ImmutableMap.<String, ObjectPropertyExpression>builder()
				.putAll(voc.objectProperties)
				.put(ObjectPropertyExpressionImpl.owlTopObjectPropertyIRI, ObjectPropertyExpressionImpl.owlTopObjectProperty)
				.put(ObjectPropertyExpressionImpl.owlBottomObjectPropertyIRI, ObjectPropertyExpressionImpl.owlBottomObjectProperty).build();
			dataProperties  = ImmutableMap.<String, DataPropertyExpression>builder() 
				.putAll(voc.dataProperties)
				.put(DataPropertyExpressionImpl.owlTopDataPropertyIRI, DataPropertyExpressionImpl.owlTopDataProperty)
				.put(DataPropertyExpressionImpl.owlBottomDataPropertyIRI, DataPropertyExpressionImpl.owlBottomDataProperty).build();
		}
		
		@Override
		public OClass getClass(String uri) {
			OClass oc = concepts.get(uri);
			if (oc == null)
				throw new RuntimeException(CLASS_NOT_FOUND + uri);
			return oc;
		}

		@Override
		public ObjectPropertyExpression getObjectProperty(String uri) {
			ObjectPropertyExpression ope = objectProperties.get(uri);
			if (ope == null)
				throw new RuntimeException(OBJECT_PROPERTY_NOT_FOUND + uri);
			return ope;
		}

		@Override
		public DataPropertyExpression getDataProperty(String uri) {
			DataPropertyExpression dpe = dataProperties.get(uri);
			if (dpe == null)
				throw new RuntimeException(DATA_PROPERTY_NOT_FOUND + uri);
			return dpe;
		}

		
		
		@Override
		public boolean containsClass(String uri) {
			return concepts.containsKey(uri);
		}

		@Override
		public boolean containsObjectProperty(String uri) {
			return objectProperties.containsKey(uri);
		}

		@Override
		public boolean containsDataProperty(String uri) {
			return dataProperties.containsKey(uri);
		}

		@Override
		public Collection<OClass> getClasses() {
			return concepts.values();
		}

		@Override
		public Collection<ObjectPropertyExpression> getObjectProperties() {
			return objectProperties.values();
		}

		@Override
		public Collection<DataPropertyExpression> getDataProperties() {
			return dataProperties.values();
		}

		@Override
		public boolean isEmpty() {
			// the minimum size is 2 because of \top / \bopttom
			return concepts.size() == 2 && objectProperties.size() == 2 && dataProperties.size() == 2;
		}

		@Override
		public Datatype getDatatype(String uri) {
			Datatype dt = OWL2QLDatatypes.get(uri);
			if (dt == null)
				throw new RuntimeException(DATATYPE_NOT_FOUND + uri);
			return dt;
		}
	}

	OntologyImpl(OntologyVocabularyImpl voc) {
		this.vocabulary = new ImmutableOntologyVocabularyImpl(voc);
	}
	
	@Override
	public ImmutableOntologyVocabulary getVocabulary() {
		return vocabulary;
	}
	

	/**
	 * adds a normalized subclass axiom
	 *
	 * SubClassOf := 'SubClassOf' '(' axiomAnnotations subClassExpression superClassExpression ')'
	 * 
	 * implements rule [C1]:
	 *    - ignore the axiom if the first argument is owl:Nothing or the second argument is owl:Thing 
	 *    - replace by a disjointness axiom if the second argument is owl:Nothing
	 * 
	 */
	
	@Override
	public void addSubClassOfAxiom(ClassExpression ce1, ClassExpression ce2) {
		checkSignature(ce1);
		checkSignature(ce2);
		if (ce1.isNothing() || ce2.isThing()) 
			return;
		
		if (ce2.isNothing()) {
			NaryAxiom<ClassExpression> ax = new NaryAxiomImpl<>(ImmutableSet.<ClassExpression>of(ce1));
			disjointClassesAxioms.add(ax);
		}
		else {
			BinaryAxiom<ClassExpression> ax = new BinaryAxiomImpl<>(ce1, ce2);
			subClassAxioms.add(ax);
		}
	}	

	@Override
	public void addSubClassOfAxiom(DataRangeExpression concept1, DataRangeExpression concept2) {
		checkSignature(concept1);
		checkSignature(concept2);
		BinaryAxiom<DataRangeExpression> ax = new BinaryAxiomImpl<>(concept1, concept2);
		subDataRangeAxioms.add(ax);
	}

	
	/**
	 * adds a normalized data subproperty axiom
	 * 
	 * SubObjectPropertyOf := 'SubObjectPropertyOf' '(' axiomAnnotations 
	 * 						ObjectPropertyExpression ObjectPropertyExpression ')'
	 * 
	 * implements rule [O1]:
	 *    - ignore the axiom if the first argument is owl:bottomObjectProperty 
	 *    				or the second argument is owl:topObjectProperty 
	 *    - replace by a disjointness axiom if the second argument is owl:bottomObjectProperty
	 * 
	 */
	
	@Override
	public void addSubPropertyOfAxiom(ObjectPropertyExpression ope1, ObjectPropertyExpression ope2) {
		checkSignature(ope1);
		checkSignature(ope2);
		if (ope1.isBottom() || ope2.isTop()) 
			return;

		if (ope2.isBottom()) {
			NaryAxiom<ObjectPropertyExpression> ax = new NaryAxiomImpl<>(ImmutableSet.<ObjectPropertyExpression>of(ope1));
			disjointObjectPropertiesAxioms.add(ax);
		}
		else {
			BinaryAxiom<ObjectPropertyExpression> ax = new BinaryAxiomImpl<>(ope1, ope2);
			subObjectPropertyAxioms.add(ax);
		}
	}
	
	/**
	 * adds a normalized data subproperty axiom
	 * 
	 * SubDataPropertyOf := 'SubDataPropertyOf' '(' axiomAnnotations 
	 * 					subDataPropertyExpression superDataPropertyExpression ')'
	 * subDataPropertyExpression := DataPropertyExpression
	 * superDataPropertyExpression := DataPropertyExpression
	 * 
	 * implements rule [D1]:
	 *    - ignore the axiom if the first argument is owl:bottomDataProperty or the second argument is owl:topDataProperty 
	 *    - replace by a disjointness axiom if the second argument is owl:bottomDataProperty
	 * 
	 */
	
	@Override
	public void addSubPropertyOfAxiom(DataPropertyExpression dpe1, DataPropertyExpression dpe2) {
		checkSignature(dpe1);
		checkSignature(dpe2);
		if (dpe1.isBottom() || dpe2.isTop()) 
			return;

		if (dpe2.isBottom()) {
			NaryAxiom<DataPropertyExpression> ax = new NaryAxiomImpl<>(ImmutableSet.<DataPropertyExpression>of(dpe1));
			disjointDataPropertiesAxioms.add(ax);
		}
		else {
			BinaryAxiom<DataPropertyExpression> ax = new BinaryAxiomImpl<>(dpe1, dpe2);
			subDataPropertyAxioms.add(ax);
		}

	}

	@Override
	public void addDisjointClassesAxiom(ImmutableSet<ClassExpression> classes) {	
		for (ClassExpression c : classes)
			checkSignature(c);
		NaryAxiom<ClassExpression> ax = new NaryAxiomImpl<>(classes);
		disjointClassesAxioms.add(ax);
	}

	@Override
	public void addDisjointObjectPropertiesAxiom(ImmutableSet<ObjectPropertyExpression> props) {
		for (ObjectPropertyExpression p : props)
			checkSignature(p);
		NaryAxiomImpl<ObjectPropertyExpression> ax = new NaryAxiomImpl<>(props);
		disjointObjectPropertiesAxioms.add(ax);
	}

	@Override
	public void addDisjointDataPropertiesAxiom(ImmutableSet<DataPropertyExpression> props) {
		for (DataPropertyExpression p : props)
			checkSignature(p);
		NaryAxiomImpl<DataPropertyExpression> ax = new NaryAxiomImpl<>(props);
		disjointDataPropertiesAxioms.add(ax);
	}
	
	@Override
	public void addFunctionalObjectPropertyAxiom(ObjectPropertyExpression prop) {
		checkSignature(prop);
		functionalObjectPropertyAxioms.add(prop);
	}

	@Override
	public void addFunctionalDataPropertyAxiom(DataPropertyExpression prop) {
		checkSignature(prop);
		functionalDataPropertyAxioms.add(prop);
	}
	
	@Override
	public void addClassAssertion(ClassAssertion assertion) {
		checkSignature(assertion.getConcept());
		classAssertions.add(assertion);
	}

	@Override
	public void addObjectPropertyAssertion(ObjectPropertyAssertion assertion) {
		checkSignature(assertion.getProperty());
		objectPropertyAssertions.add(assertion);
	}
	
	@Override
	public void addDataPropertyAssertion(DataPropertyAssertion assertion) {
		checkSignature(assertion.getProperty());
		dataPropertyAssertions.add(assertion);
	}
	
	
	@Override 
	public List<ClassAssertion> getClassAssertions() {
		return Collections.unmodifiableList(classAssertions);
	}
	
	@Override 
	public List<ObjectPropertyAssertion> getObjectPropertyAssertions() {
		return Collections.unmodifiableList(objectPropertyAssertions);
	}

	@Override 
	public List<DataPropertyAssertion> getDataPropertyAssertions() {
		return Collections.unmodifiableList(dataPropertyAssertions);
	}

	@Override
	public Collection<BinaryAxiom<ClassExpression>> getSubClassAxioms() {
		return Collections.unmodifiableList(subClassAxioms);
	}
	
	@Override
	public Collection<BinaryAxiom<DataRangeExpression>> getSubDataRangeAxioms() {
		return Collections.unmodifiableList(subDataRangeAxioms);
	}
	
	
	@Override
	public Collection<BinaryAxiom<ObjectPropertyExpression>> getSubObjectPropertyAxioms() {
		return Collections.unmodifiableList(subObjectPropertyAxioms);
	}
	
	@Override
	public Collection<BinaryAxiom<DataPropertyExpression>> getSubDataPropertyAxioms() {
		return Collections.unmodifiableList(subDataPropertyAxioms);
	}
	
	@Override 
	public Set<ObjectPropertyExpression> getFunctionalObjectProperties() {
		return Collections.unmodifiableSet(functionalObjectPropertyAxioms);
	}
	
	@Override 
	public Set<DataPropertyExpression> getFunctionalDataProperties() {
		return Collections.unmodifiableSet(functionalDataPropertyAxioms);
	}
	
	@Override 
	public Collection<NaryAxiom<ClassExpression>> getDisjointClassesAxioms() {
		return Collections.unmodifiableList(disjointClassesAxioms);
	}
	
	@Override 
	public Collection<NaryAxiom<ObjectPropertyExpression>> getDisjointObjectPropertiesAxioms() {
		return Collections.unmodifiableList(disjointObjectPropertiesAxioms);
	}

	@Override 
	public Collection<NaryAxiom<DataPropertyExpression>> getDisjointDataPropertiesAxioms() {
		return Collections.unmodifiableList(disjointDataPropertiesAxioms);
	}

	
	@Override
	public String toString() {
		StringBuilder str = new StringBuilder();
		str.append("[Ontology info.")
		 	.append(String.format(" Axioms: %d", subClassAxioms.size() + subObjectPropertyAxioms.size() + subDataPropertyAxioms.size()))
			.append(String.format(" Classes: %d", vocabulary.getClasses().size()))
			.append(String.format(" Object Properties: %d", vocabulary.getObjectProperties().size()))
			.append(String.format(" Data Properties: %d]", vocabulary.getDataProperties().size()));
		return str.toString();
	}

	
	@Override
	public ObjectPropertyExpression createAuxiliaryObjectProperty() {
		Predicate prop = obdafac.getDataPropertyPredicate(AUXROLEURI + auxCounter);
		ObjectPropertyExpression ope = new ObjectPropertyExpressionImpl(prop);
		auxCounter++ ;
		auxObjectProperties.add(ope);
		return ope;
	}
	
	@Override
	public DataPropertyExpression createAuxiliaryDataProperty() {
		Predicate prop = obdafac.getDataPropertyPredicate(AUXROLEURI + auxCounter);
		DataPropertyExpression dpe = new DataPropertyExpressionImpl(prop);
		auxCounter++ ;
		auxDataProperties.add(dpe);
		return dpe;
	}
	
	@Override
	public Collection<ObjectPropertyExpression> getAuxiliaryObjectProperties() {
		return Collections.unmodifiableSet(auxObjectProperties);
	}

	@Override
	public Collection<DataPropertyExpression> getAuxiliaryDataProperties() {
		return Collections.unmodifiableSet(auxDataProperties);
	}

	
	
	// built-in datatypes 
	
	final static Set<Predicate> builtinDatatypes;

	static { // static block
		DatatypeFactory dfac = OBDADataFactoryImpl.getInstance().getDatatypeFactory();
		
		builtinDatatypes = new HashSet<>();
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.LITERAL)); //  .RDFS_LITERAL);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.STRING)); // .XSD_STRING);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.INTEGER)); //OBDAVocabulary.XSD_INTEGER);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.NEGATIVE_INTEGER)); // XSD_NEGATIVE_INTEGER);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.INT)); // OBDAVocabulary.XSD_INT);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.NON_NEGATIVE_INTEGER)); //OBDAVocabulary.XSD_NON_NEGATIVE_INTEGER);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.UNSIGNED_INT)); // OBDAVocabulary.XSD_UNSIGNED_INT);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.POSITIVE_INTEGER)); //.XSD_POSITIVE_INTEGER);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.NON_POSITIVE_INTEGER)); // OBDAVocabulary.XSD_NON_POSITIVE_INTEGER);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.LONG)); // OBDAVocabulary.XSD_LONG);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.DECIMAL)); // OBDAVocabulary.XSD_DECIMAL);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.DOUBLE)); // OBDAVocabulary.XSD_DOUBLE);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.FLOAT)); // OBDAVocabulary.XSD_FLOAT);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.DATETIME)); // OBDAVocabulary.XSD_DATETIME);
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.BOOLEAN)); // OBDAVocabulary.XSD_BOOLEAN
		builtinDatatypes.add(dfac.getTypePredicate(COL_TYPE.DATETIME_STAMP)); // OBDAVocabulary.XSD_DATETIME_STAMP
	}
	
	
	
	private void checkSignature(ClassExpression desc) {		
		if (desc instanceof OClass) {
			OClass cl = (OClass) desc;
			if (!vocabulary.concepts.containsKey(cl.getPredicate().getName()))
				throw new IllegalArgumentException(CLASS_NOT_FOUND + desc);
		}	
		else if (desc instanceof ObjectSomeValuesFrom) {
			checkSignature(((ObjectSomeValuesFrom) desc).getProperty());
		}
		else  {
			assert (desc instanceof DataSomeValuesFrom);
			checkSignature(((DataSomeValuesFrom) desc).getProperty());
		}
	}	
	
	private void checkSignature(DataRangeExpression desc) {		
		if (desc instanceof Datatype) {
			Predicate pred = ((Datatype) desc).getPredicate();
			if (!builtinDatatypes.contains(pred)) 
				throw new IllegalArgumentException("Datatype predicate is unknown: " + pred);
		}
		else {
			assert (desc instanceof DataPropertyRangeExpression);
			checkSignature(((DataPropertyRangeExpression) desc).getProperty());
		}
	}

	private void checkSignature(ObjectPropertyExpression prop) {	
		if (prop.isInverse()) 
			prop = prop.getInverse();
		
		if (!vocabulary.containsObjectProperty(prop.getPredicate().getName()) && !auxObjectProperties.contains(prop)) 
				throw new IllegalArgumentException(OBJECT_PROPERTY_NOT_FOUND + prop);
	}

	private void checkSignature(DataPropertyExpression prop) {
		if (!vocabulary.containsDataProperty(prop.getPredicate().getName()) && !auxDataProperties.contains(prop))
			throw new IllegalArgumentException(DATA_PROPERTY_NOT_FOUND + prop);
	}
	
}
