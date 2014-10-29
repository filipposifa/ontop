#!/bin/sh

########################################################################################################################
# README:                                                                                                              #
#                                                                                                                      #
# The required components for building the release can be obtained by running the script fetch-dependencies.sh.        #
#                                                                                                                      #
# Clone the repository from GitHub: https://github.com/ontop/ontop. Locate the source folder in BUILD_ROOT variable    #
# Update the repository to the TAG release for stable version.                                                         #
#                                                                                                                      #
########################################################################################################################

# location for the build ROOT folder
export BUILD_ROOT=/build/ontop

# location for the build dependencies home 
export ONTOP_DEP_HOME=/build/dependencies

#------------------------------------------# 
# DO NOT touch the following command lines #
#------------------------------------------#

# location for the JDBC plugin jars
export JDBC_PLUGINS_PATH=$ONTOP_DEP_HOME

# location for protege clean folder (Protege 4.3)
export PROTEGE_COPY_PATH=$ONTOP_DEP_HOME
export PROTEGE_COPY_FILENAME=protege
export PROTEGE_MAIN_FOLDER_NAME=Protege_4.3
export PROTEGE_MAIN_PLUGIN=ontopro-plugin

# location and name for jetty distribution (should be ZIP)
export JETTY_COPY_PATH=$ONTOP_DEP_HOME
export JETTY_COPY_FILENAME=jetty-distribution
export JETTY_INNER_FOLDERNAME=jetty-distribution-8.1.9

#location for sesame and workbench WEB-APP jars
export OPENRDF_WORKBENCH_PATH=$ONTOP_DEP_HOME
export OPENRDF_SESAME_PATH=$ONTOP_DEP_HOME      

# name of the wars for sesame and workbench WEB-APPs  (these have to be already customized with stylesheets)
export OPENRDF_SESAME_FILENAME=openrdf-sesame
export OPENRDF_WORKBENCH_FILENAME=openrdf-workbench
                
# folder names of the output
export ONTOP_DIST_DIR=${BUILD_ROOT}/quest-distribution
export PROTEGE_DIR=${ONTOP_DIST_DIR}/ontopPro
export QUEST_SESAME_DIR=${ONTOP_DIST_DIR}/QuestSesame
export QUEST_JETTY_DIR=${ONTOP_DIST_DIR}/QuestJetty
export OWL_API_DIR=${ONTOP_DIST_DIR}/QuestOWL

export VERSION=1.13
export REVISION=2-SNAPSHOT


# Start building the packages
#
cd $BUILD_ROOT
mvn clean

# Packing the -ontopPro- distribution
#
echo ""
echo "========================================="
echo " Making -ontopPro- distribution package"
echo "-----------------------------------------"
echo "pluginVersion=$VERSION.$REVISION" >  $BUILD_ROOT/obdalib-core/src/main/resources/it/unibz/krdb/obda/utils/version.properties
rm -fr $BUILD_ROOT/obdalib-protege41/dist
mvn install -DskipTests
cd $BUILD_ROOT/obdalib-protege41/
mvn bundle:bundle -DskipTests

rm -fr $PROTEGE_DIR
mkdir $PROTEGE_DIR
cp target/it.unibz.inf.obda.p4plugin-$VERSION.$REVISION.jar $PROTEGE_DIR/it.unibz.inf.obda.p4plugin-$VERSION.$REVISION.jar
cp $PROTEGE_COPY_PATH/$PROTEGE_COPY_FILENAME.zip $PROTEGE_DIR/

cd $PROTEGE_DIR

mkdir -p $PROTEGE_MAIN_FOLDER_NAME/plugins
cp it.unibz.inf.obda.p4plugin-$VERSION.$REVISION.jar $PROTEGE_MAIN_FOLDER_NAME/plugins/
cp $JDBC_PLUGINS_PATH/org.protege.osgi.jdbc.jar $PROTEGE_MAIN_FOLDER_NAME/plugins/
cp $JDBC_PLUGINS_PATH/org.protege.osgi.jdbc.prefs.jar $PROTEGE_MAIN_FOLDER_NAME/plugins/
zip $PROTEGE_DIR/$PROTEGE_MAIN_PLUGIN-$VERSION.$REVISION.zip $PROTEGE_MAIN_FOLDER_NAME/plugins/*.*

zip $PROTEGE_COPY_FILENAME.zip $PROTEGE_MAIN_FOLDER_NAME/plugins/*
mv $PROTEGE_COPY_FILENAME.zip $PROTEGE_MAIN_PLUGIN-with-protege-$VERSION.$REVISION.zip

rm -fr $PROTEGE_MAIN_FOLDER_NAME
cd $BUILD_ROOT/quest-distribution

# Packing the sesame distribution
#
echo ""
echo "========================================="
echo " Making Sesame distribution package"
echo "-----------------------------------------"
rm -fr $QUEST_SESAME_DIR
mkdir -p ${QUEST_SESAME_DIR}/WEB-INF/lib
mvn assembly:assembly -DskipTests
cp target/ontop-distribution-$VERSION.$REVISION-sesame-bin.jar $QUEST_SESAME_DIR/WEB-INF/lib/ontop-distribution-$VERSION.$REVISION.jar
unzip -q -d $QUEST_SESAME_DIR/WEB-INF/lib/ target/ontop-distribution-$VERSION.$REVISION-dependencies.zip
cp $OPENRDF_SESAME_PATH/$OPENRDF_SESAME_FILENAME.war $QUEST_SESAME_DIR/
cp $OPENRDF_WORKBENCH_PATH/$OPENRDF_WORKBENCH_FILENAME.war $QUEST_SESAME_DIR/

echo ""
echo "[INFO] Adding Quest-specific forms to the openrdf-workbench.war file"
cd ${BUILD_ROOT}/quest-sesame/src/main/resources/workbench/
jar -uf ${QUEST_SESAME_DIR}/${OPENRDF_WORKBENCH_FILENAME}.war *

cd ${QUEST_SESAME_DIR}
echo ""
echo "[INFO] Adding QuestSesame and dependency JARs to openrdf-sesame.war"
jar -uf $OPENRDF_SESAME_FILENAME.war WEB-INF/lib/*

echo "[INFO] Adding QuestSesame and dependency JARs to openrdf-workbench.war"
jar -uf $OPENRDF_WORKBENCH_FILENAME.war WEB-INF/lib/*

rm -fr WEB-INF
cd $BUILD_ROOT/quest-distribution

# Packaging the sesame jetty distribution
#
echo ""
echo "========================================="
echo " Making Sesame Jetty distribution package"
echo "-----------------------------------------"
rm -fr $QUEST_JETTY_DIR
mkdir $QUEST_JETTY_DIR
cp $JETTY_COPY_PATH/$JETTY_COPY_FILENAME.zip $QUEST_JETTY_DIR/ontop-with-jetty-$VERSION.$REVISION.zip

export JETTY_FOLDER=$JETTY_INNER_FOLDERNAME
cd $QUEST_JETTY_DIR
mkdir -p $JETTY_INNER_FOLDERNAME/webapps
cp $QUEST_SESAME_DIR/$OPENRDF_SESAME_FILENAME.war $JETTY_FOLDER/webapps
cp $QUEST_SESAME_DIR/$OPENRDF_WORKBENCH_FILENAME.war $JETTY_FOLDER/webapps

zip ontop-with-jetty-$VERSION.$REVISION.zip $JETTY_FOLDER/webapps/*

rm -fr $JETTY_FOLDER
cd $BUILD_ROOT/quest-distribution

# Packaging the OWL-API distribution
#
echo ""
echo "========================================="
echo " Making OWL-API distribution package"
echo "-----------------------------------------"
rm -fr $OWL_API_DIR
mkdir $OWL_API_DIR
echo "[INFO] Copying files..."
cp target/ontop-distribution-$VERSION.$REVISION-bin.zip $OWL_API_DIR/ontop-distribution-$VERSION.$REVISION.zip

echo ""
echo "Done."
echo ""
