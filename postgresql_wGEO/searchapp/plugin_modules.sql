delete from searchapp.plugin_module;
delete from searchapp.plugin;


-- insert into searchapp.PLUGIN 
 Insert into SEARCHAPP.PLUGIN (PLUGIN_SEQ,NAME,PLUGIN_NAME,HAS_MODULES,HAS_FORM,DEFAULT_LINK,FORM_LINK,FORM_PAGE,ACTIVE) values (1,'R-Modules','R Modules','Y','N','/RModules/default',null,null,'Y');



 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (3,1,'Box Plot with ANOVA','0.1','Y','N','null','BoxPlot','boxPlot','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (22,1,'Correlation Analysis','0.1','Y','N','null','CorrelationAnalysis','correlationAnalysis','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (33,1,'Heatmap','0.1','Y','N','null','Heatmap','heatmap','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (62,1,'Hierarchical Clustering','0.1','Y','N','null','HClust','hclust','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (34,1,'IC50','0.1','Y','N','null','IC50','ic50','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (61,1,'K-Means Clustering','0.1','Y','N','null','KClust','kclust','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (21,1,'Line Graph','0.1','Y','N','null','LineGraph','lineGraph','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (67,1,'Marker Selection','0.1','Y','N','null','MarkerSelection','markerSelection','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (66,1,'PCA','0.1','Y','N','null','PCA','pca','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (31,1,'Scatter Plot with Linear Regression','0.1','Y','N','null','ScatterPlot','scatterPlot','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (1,1,'Survival Analysis','0.1','Y','N','null','SurvivalAnalysis','survivalAnalysis','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (32,1,'Table with Fisher Test','0.1','Y','N','null','TableWithFisher','tableWithFisher','DEFAULT');

 Insert into SEARCHAPP.PLUGIN_MODULE (MODULE_SEQ,PLUGIN_SEQ,NAME,VERSION,ACTIVE,HAS_FORM,FORM_LINK,FORM_PAGE,MODULE_NAME,CATEGORY) values (35,1,'Waterfall','0.1','Y','N','null','Waterfall','waterfall','DEFAULT');



 update searchapp.plugin_module
 set params='{"id":"ic50","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||IC50/BuildIC50Data.R'')","IC50Data.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.celllines=''||CELLLINES||'',concept.dosage=''||DOSAGE||'',concept.response=''||RESPONSE||'')"]},"name":"IC50","dataFileInputMapping":{"MRNA.TXT":"FALSE","CLINICAL.TXT":"TRUE","SNP.TXT":"snpData"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"pivotData":false,"view":"IC50","processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||IC50/IC50Loader.R'')","IC50Plot.loader(input.filename=''outputfile'')"]},"renderer":{"GSP":"/IC50/ic50Out"},"variableMapping":{"||DOSAGE||":"dosageVariable","||CELLLINES||":"cellLineVariable","||RESPONSE||":"responseVariable"}}'
 where module_name = 'ic50';


 update searchapp.plugin_module
 set params='{"id":"waterfall","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Waterfall/BuildWaterfallData.R'')","WaterfallData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept=''||CONCEPT||'',input.gexFile=''||TEMPFOLDERDIRECTORY||mRNA/Processed_Data/mRNA.trans'',input.snpFile=''||TEMPFOLDERDIRECTORY||SNP/snp.trans'',concept.type=''||CONCEPTTYPE||'',genes=''||GENES||'',genes.aggregate=''||AGGREGATE||'',sample=''||SAMPLE||'',time=''||TIMEPOINTS||'',snptype=''||SNPTYPE||'',lowRangeOperator=''||LOWRANGEOPERATOR||'',lowRangeValue=''||LOWRANGEVALUE||'',highRangeOperator=''||HIGHRANGEOPERATOR||'',highRangeValue=''||HIGHRANGEVALUE||'')"]},"name":"Waterfall","dataFileInputMapping":{"MRNA.TXT":"mrnaData","CLINICAL.TXT":"TRUE","SNP.TXT":"snpData"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"pivotData":false,"view":"Waterfall","processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Waterfall/WaterfallPlotLoader.R'')","WaterfallPlot.loader(input.filename=''outputfile'',concept=''||CONCEPT||'')"]},"renderer":{"GSP":"/waterfall/waterfallOut"},"variableMapping":{"||CONCEPT||":"dataNode","||GENES||":"divDataNodePathway","||CONCEPTTYPE||":"divDataNodeType","||AGGREGATE||":"divDataNodeprobesAggregation","||TIMEPOINTS||":"divDataNodetimepoints","||LOWRANGEVALUE||":"lowRangeValue","||SNPTYPE||":"divDataNodeSNPType","||LOWRANGEOPERATOR||":"lowRangeOperator","||TISSUES||":"divDataNodetissues","||HIGHRANGEVALUE||":"highRangeValue","||HIGHRANGEOPERATOR||":"highRangeOperator","||SAMPLE||":"divDataNodesamples"}}'
 where module_name = 'waterfall';


 update searchapp.plugin_module
 set params='{"id":"boxPlot","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/BinData.R'')","source(''||PLUGINSCRIPTDIRECTORY||ANOVA/BuildANOVAData.R'')","ANOVAData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.dependent=\"||DEPENDENT||\",concept.independent=\"||INDEPENDENT||\",binning.enabled=''||BINNING||'',binning.bins=''||NUMBERBINS||'',binning.type=''||BINNINGTYPE||'',binning.manual=''||BINNINGMANUAL||'',binning.binrangestring=''||BINNINGRANGESTRING||'',binning.variabletype=''||BINNINGVARIABLETYPE||'',binning.variable=''||BINNINGVARIABLE||'',flipimage=||FLIPIMAGE||,input.gexFile=''||TEMPFOLDERDIRECTORY||mRNA/Processed_Data/mRNA.trans'',input.snpFile=''||TEMPFOLDERDIRECTORY||SNP/snp.trans'',concept.dependent.type=''||TYPEDEP||'',concept.independent.type=''||TYPEIND||'',genes.dependent=''||GENESDEP||'',genes.independent=''||GENESIND||'',genes.dependent.aggregate=''||AGGREGATEDEP||'',genes.independent.aggregate=''||AGGREGATEIND||'',sample.dependent=''||SAMPLEDEP||'',sample.independent=''||SAMPLEIND||'',time.dependent=''||TIMEPOINTSDEP||'',time.independent=''||TIMEPOINTIND||'',snptype.dependent=''||SNPTYPEDEP||'',snptype.independent=''||SNPTYPEIND||'',gpl.dependent=''||GPLDEP||'',gpl.independent=''||GPLINDEP||'')"]},"name":"Box Plot with ANOVA","dataTypes":{"subset1":["CLINICAL.TXT"]},"dataFileInputMapping":{"CLINICAL.TXT":"TRUE","MRNA_DETAILED.TXT":"mrnaData","SNP.TXT":"snpData"},"pivotData":false,"view":"BoxPlot","processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||ANOVA/BoxPlotLoader.R'')","BoxPlot.loader(input.filename=''outputfile'',concept.dependent=''||DEPENDENT||'',concept.independent=''||INDEPENDENT||'',flipimage=||FLIPIMAGE||,concept.dependent.type=''||TYPEDEP||'',concept.independent.type=''||TYPEIND||'',genes.dependent=''||GENESDEPNAME||'',genes.independent=''||GENESINDNAME||'',binning.enabled=''||BINNING||'',binning.variable=''||BINNINGVARIABLE||'')"]},"renderer":{"GSP":"/boxPlot/boxPlotOut"},"variableMapping":{"||FLIPIMAGE||":"flipImage","||AGGREGATEIND||":"divIndependentVariableprobesAggregation","||BINNING||":"binning","||GPLDEP||":"divDependentVariablegpls","||GPLINDEP||":"divIndependentVariablegpls","||BINNINGTYPE||":"binDistribution","||BINNINGRANGESTRING||":"binRanges","||TIMEPOINTSDEP||":"divDependentVariabletimepoints","||RBMPANELDEP||":"divDependentVariablerbmPanels","||TYPEDEP||":"divDependentVariableType","||TYPEIND||":"divIndependentVariableType","||SNPTYPEIND||":"divIndependentVariableSNPType","||GPLIND||":"divIndependentVariablegpls","||RBMPANELIND||":"divIndependentVariablerbmPanels","||SNPTYPEDEP||":"divDependentVariableSNPType","||TIMEPOINTIND||":"divIndependentVariabletimepoints","||DEPENDENT||":"dependentVariable","||NUMBERBINS||":"numberOfBins","||GENESDEPNAME||":"divDependentPathwayName","||PLATFORMDEP||":"divDependentVariableplatforms","||GENESIND||":"divIndependentVariablePathway","||BINNINGVARIABLE||":"binVariable","||SAMPLEIND||":"divIndependentVariablesamples","||TISSUEDEP||":"divDependentVariabletissues","||GENESDEP||":"divDependentVariablePathway","||PLATFORMIND||":"divIndependentVariableplatforms","||AGGREGATEDEP||":"divDependentVariableprobesAggregation","||BINNINGVARIABLETYPE||":"variableType","||SAMPLEDEP||":"divDependentVariablesamples","||TISSUEIND||":"divIndependentVariabletissues","||INDEPENDENT||":"independentVariable","||GENESINDNAME||":"divIndependentPathwayName","||BINNINGMANUAL||":"manualBinning"}}'
 where module_name = 'boxPlot';


 update searchapp.plugin_module
 set params='{"id":"correlationAnalysis","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Correlation/BuildCorrelationData.R'')","CorrelationData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.variables=''||CURRENTVARIABLES||'',correlation.by=''||CORRELATIONBY||'')"]},"name":"correlationAnalysis","dataFileInputMapping":{"MRNA.TXT":"FALSE","CLINICAL.TXT":"TRUE","SNP.TXT":"snpData"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"view":"CorrelationAnalysis","pivotData":false,"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Correlation/CorrelationLoader.r'')","Correlation.loader(input.filename=''outputfile.txt'',correlation.by=''||CORRELATIONBY||'',correlation.method=''||CORRELATIONTYPE||'')"]},"renderer":{"GSP":"/correlationAnalysis/correlationAnalysisOutput"},"variableMapping":{"||CORRELATIONBY||":"correlationBy","||CORRELATIONTYPE||":"correlationType","||CURRENTVARIABLES||":"variablesConceptPaths"}}'
 where module_name = 'correlationAnalysis';


 update searchapp.plugin_module
 set params='{"id":"kclust","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/parseDirectory.R'')","source(''||PLUGINSCRIPTDIRECTORY||Heatmap/BuildHeatmapData.R'')","parseDirectory(topLevelDirectory=''||TOPLEVELDIRECTORY||'')","HeatmapData.build(input.gexFile=''||TOPLEVELDIRECTORY||/workingDirectory/mRNA.trans'',genes=''||GENES||'',genes.aggregate=''||AGGREGATE||'',sample.subset1=''||SAMPLE1||'',time.subset1=''||TIMEPOINTS1||'',tissues.subset1=''||TISSUES1||'',platform.subset1=''||GPL1||'',sample.subset2=''||SAMPLE2||'',time.subset2=''||TIMEPOINTS2||'',tissues.subset2=''||TISSUES2||'',platform.subset2=''||GPL2||'')"]},"name":"K-Means Clustering","dataTypes":{"subset1":["CLINICAL.TXT"]},"dataFileInputMapping":{"CLINICAL.TXT":"TRUE","MRNA_DETAILED.TXT":"mrnaData","SNP.TXT":"snpData"},"pivotData":false,"view":"KClust","processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Heatmap/KMeansHeatmap.R'')","KMeansHeatmap.loader(input.filename=''outputfile'',clusters.number=''||CLUSTERS||'',imageWidth=||IMAGE_WIDTH||,imageHeight=||IMAGE_HEIGHT||,pointsize=||TEXT_POINT_SIZE||,maxDrawNumber=||MAXDRAWNUMBER||)"]},"renderer":{"GSP":"/RKMeans/heatmapOut"},"variableMapping":{"||GENES||":"divIndependentVariablePathway","||SAMPLE1||":"divIndependentVariablesamples","||TIMEPOINTS1||":"divIndependentVariabletimepoints","||IMAGE_HEIGHT||":"txtImageHeight","||AGGREGATE||":"divIndependentVariableprobesAggregation","||CLUSTERS||":"txtClusters","||TISSUES1||":"divIndependentVariabletissues","||IMAGE_WIDTH||":"txtImageWidth","||GPL2||":"divIndependentVariablegplsValue2","||SAMPLE2||":"divIndependentVariablesamples2","||TYPEIND||":"divIndependentVariableType","||TISSUES2||":"divIndependentVariabletissues2","||SNPTYPE||":"divIndependentVariableSNPType","||INDEPENDENT||":"independentVariable","||TIMEPOINTS2||":"divIndependentVariabletimepoints2","||GPL1||":"divIndependentVariablegplsValue","||TEXT_POINT_SIZE||":"txtImagePointsize","||MAXDRAWNUMBER||":"txtMaxDrawNumber"}}'
 where module_name = 'kclust';


 update searchapp.plugin_module
 set params='{"id":"heatmap","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/parseDirectory.R'')","source(''||PLUGINSCRIPTDIRECTORY||Heatmap/BuildHeatmapData.R'')","parseDirectory(topLevelDirectory=''||TOPLEVELDIRECTORY||'')","HeatmapData.build(input.gexFile=''||TOPLEVELDIRECTORY||/workingDirectory/mRNA.trans'',genes=''||GENES||'',genes.aggregate=''||AGGREGATE||'',sample.subset1=''||SAMPLE1||'',time.subset1=''||TIMEPOINTS1||'',tissues.subset1=''||TISSUES1||'',platform.subset1=''||GPL1||'',sample.subset2=''||SAMPLE2||'',time.subset2=''||TIMEPOINTS2||'',tissues.subset2=''||TISSUES2||'',platform.subset2=''||GPL2||'')"]},"name":"Heatmap","dataFileInputMapping":{"CLINICAL.TXT":"FALSE","SNP.TXT":"snpData","MRNA_DETAILED.TXT":"TRUE"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"pivotData":false,"view":"Heatmap","processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Heatmap/HeatmapLoader.R'')","Heatmap.loader(input.filename=''outputfile'',imageWidth=||IMAGE_WIDTH||,imageHeight=||IMAGE_HEIGHT||,pointsize=||TEXT_POINT_SIZE||,maxDrawNumber=||MAXDRAWNUMBER||)"]},"renderer":{"GSP":"/RHeatmap/heatmapOut"},"variableMapping":{"||GENES||":"divIndependentVariablePathway","||AGGREGATE||":"divIndependentVariableprobesAggregation","||TIMEPOINTS1||":"divIndependentVariabletimepoints","||TISSUES1||":"divIndependentVariabletissues","||SAMPLE1||":"divIndependentVariablesamples","||GPL1||":"divIndependentVariablegplsValue","||TIMEPOINTS2||":"divIndependentVariabletimepoints2","||TISSUES2||":"divIndependentVariabletissues2","||SAMPLE2||":"divIndependentVariablesamples2","||GPL2||":"divIndependentVariablegplsValue2","||IMAGE_HEIGHT||":"txtImageHeight","||IMAGE_WIDTH||":"txtImageWidth","||TEXT_POINT_SIZE||":"txtImagePointsize","||MAXDRAWNUMBER||":"txtMaxDrawNumber"}}'
 where module_name = 'heatmap';


 update searchapp.plugin_module
 set params='{"id":"lineGraph","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||LineGraph/BuildLinearData.R'')","LinearData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.dependent=''||DEPENDENT||'',concept.group=''||GROUPBY||'')"]},"name":"LineGraph","dataFileInputMapping":{"MRNA.TXT":"FALSE","CLINICAL.TXT":"TRUE","SNP.TXT":"FALSE"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"view":"LineGraph","pivotData":false,"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||LineGraph/LineGraphLoader.r'')","LineGraph.loader(input.filename=''outputfile.txt'',graphType=''||GRAPHTYPE||'')"]},"renderer":{"GSP":"/lineGraph/lineGraphOutput"},"variableMapping":{"||GROUPBY||":"groupByVariable","||DEPENDENT||":"dependentVariable","||INDEPENDENT||":"independentVariable","||GRAPHTYPE||":"graphType"}}'
 where module_name = 'lineGraph';


 update searchapp.plugin_module
 set params='{"id":"markerSelection","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/parseDirectory.R'')","source(''||PLUGINSCRIPTDIRECTORY||MarkerSelection/BuildMSData.R'')","parseDirectory(topLevelDirectory=''||TOPLEVELDIRECTORY||'')","MSData.build(input.dataFile=''||TOPLEVELDIRECTORY||workingDirectory/mRNA.trans'',genes=''||GENES||'',genes.aggregate=''||AGGREGATE||'',sample.subset1=''||SAMPLE1||'',time.subset1=''||TIMEPOINTS1||'',tissues.subset1=''||TISSUES1||'',platform.subset1=''||GPL1||'',sample.subset2=''||SAMPLE2||'',time.subset2=''||TIMEPOINTS2||'',tissues.subset2=''||TISSUES2||'',platform.subset2=''||GPL2||'')"]},"name":"MarkerSelection","dataFileInputMapping":{"CLINICAL.TXT":"TRUE","MRNA_DETAILED.TXT":"mrnaData","SNP.TXT":"snpData"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"view":"MarkerSelection","pivotData":false,"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||MarkerSelection/MarkerSelection.R'')","MS.loader(input.filename=''outputfile'',numberOfMarkers=||NUMBEROFMARKERS||)","source(''||PLUGINSCRIPTDIRECTORY||Heatmap/HeatmapLoader.R'')","Heatmap.loader(input.filename=''heatmapdata'',meltData=FALSE,imageWidth=||IMAGE_WIDTH||,imageHeight=||IMAGE_HEIGHT||,pointsize=||TEXT_POINT_SIZE||)"]},"renderer":{"GSP":"/markerSelection/markerSelectionOut"},"variableMapping":{"||GENES||":"divIndependentVariablePathway","||SAMPLE1||":"divIndependentVariablesamples","||TIMEPOINTS1||":"divIndependentVariabletimepoints","||IMAGE_HEIGHT||":"txtImageHeight","||TISSUES1||":"divIndependentVariabletissues","||IMAGE_WIDTH||":"txtImageWidth","||GPL2||":"divIndependentVariablegplsValue2","||SAMPLE2||":"divIndependentVariablesamples2","||TYPEIND||":"divIndependentVariableType","||INDEPENDENT||":"independentVariable","||SNPTYPE||":"divIndependentVariableSNPType","||TISSUES2||":"divIndependentVariabletissues2","||TIMEPOINTS2||":"divIndependentVariabletimepoints2","||GPL1||":"divIndependentVariablegplsValue","||TEXT_POINT_SIZE||":"txtImagePointsize","||NUMBEROFMARKERS||":"txtNumberOfMarkers"}}'
 where module_name = 'markerSelection';


 update searchapp.plugin_module
 set params='{"view":"PCA","pivotData":false,"converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/parseDirectory.R'')","source(''||PLUGINSCRIPTDIRECTORY||PCA/BuildPCAData.R'')","parseDirectory(topLevelDirectory=''||TOPLEVELDIRECTORY||'')","PCAData.build(input.gexFile=''||TOPLEVELDIRECTORY||/workingDirectory/mRNA.trans'',sample.subset1=''||SAMPLE1||'',time.subset1=''||TIMEPOINTS1||'',tissues.subset1=''||TISSUES1||'',platform.subset1=''||GPL1||'',sample.subset2=''||SAMPLE2||'',time.subset2=''||TIMEPOINTS2||'',tissues.subset2=''||TISSUES2||'',platform.subset2=''||GPL2||'',genes=''||GENES||'',genes.aggregate=''||AGGREGATE||'')"]},"variableMapping":{"||TISSUES1||":"divIndependentVariabletissues","||GPL2||":"divIndependentVariablegplsValue2","||TIMEPOINTS1||":"divIndependentVariabletimepoints","||GPL1||":"divIndependentVariablegplsValue","||AGGREGATE||":"divIndependentVariableprobesAggregation","||SAMPLE1||":"divIndependentVariablesamples","||TIMEPOINTS2||":"divIndependentVariabletimepoints2","||GENES||":"divIndependentVariablePathway","||SAMPLE2||":"divIndependentVariablesamples2","||TISSUES2||":"divIndependentVariabletissues2"},"renderer":{"GSP":"/PCA/pcaOut"},"dataFileInputMapping":{"SNP.TXT":"snpData","MRNA_DETAILED.TXT":"TRUE","CLINICAL.TXT":"FALSE"},"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||PCA/LoadPCA.R'')","PCA.loader(input.filename=''outputfile'')"]},"dataTypes":{"subset1":["CLINICAL.TXT"]},"name":"PCA","id":"pca"}'
 where module_name = 'pca';


 update searchapp.plugin_module
 set params='{"view":"ScatterPlot","pivotData":false,"converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||ScatterPlot/BuildScatterData.R'')","ScatterData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.dependent=\"||DEPENDENT||\",concept.independent=\"||INDEPENDENT||\",input.gexFile=''||TEMPFOLDERDIRECTORY||mRNA/Processed_Data/mRNA.trans'',input.snpFile=''||TEMPFOLDERDIRECTORY||SNP/snp.trans'',concept.dependent.type=''||TYPEDEP||'',concept.independent.type=''||TYPEIND||'',genes.dependent=''||GENESDEP||'',genes.independent=''||GENESIND||'',genes.dependent.aggregate=''||AGGREGATEDEP||'',genes.independent.aggregate=''||AGGREGATEIND||'',sample.dependent=''||SAMPLEDEP||'',sample.independent=''||SAMPLEIND||'',time.dependent=''||TIMEPOINTSDEP||'',time.independent=''||TIMEPOINTIND||'',snptype.dependent=''||SNPTYPEDEP||'',snptype.independent=''||SNPTYPEIND||'',gpl.dependent=''||GPLDEP||'',gpl.independent=''||GPLINDEP||'',logX=''||LOGX||'')"]},"variableMapping":{"||SAMPLEIND||":"divIndependentVariablesamples","||SNPTYPEIND||":"divIndependentVariableprobesAggregation","||PLATFORMIND||":"divIndependentVariableplatforms","||DEPENDENT||":"dependentVariable","||GENESIND||":"divIndependentVariablePathway","||GENESDEPNAME||":"divDependentPathwayName","||TISSUEIND||":"divIndependentVariabletissues","||TYPEIND||":"divIndependentVariableType","||GENESDEP||":"divDependentVariablePathway","||TYPEDEP||":"divDependentVariableType","||INDEPENDENT||":"independentVariable","||GENESINDNAME||":"divIndependentPathwayName","||TIMEPOINTIND||":"divIndependentVariabletimepoints","||SNPTYPEDEP||":"divDependentVariableSNPType","||RBMPANELDEP||":"divDependentVariablerbmPanels","||GPLIND||":"divIndependentVariablegpls","||TIMEPOINTSDEP||":"divDependentVariabletimepoints","||AGGREGATEDEP||":"divDependentVariableprobesAggregation","||GPLDEP||":"divDependentVariablegpls","||GPLINDEP||":"divIndependentVariablegpls","||TISSUEDEP||":"divDependentVariabletissues","||LOGX||":"logX","||RBMPANELIND||":"divIndependentVariablerbmPanels","||SAMPLEDEP||":"divDependentVariablesamples","||AGGREGATEIND||":"divIndependentVariableprobesAggregation","||PLATFORMDEP||":"divDependentVariableplatforms"},"renderer":{"GSP":"/scatterPlot/scatterPlotOut"},"dataFileInputMapping":{"SNP.TXT":"snpData","MRNA_DETAILED.TXT":"mrnaData","CLINICAL.TXT":"TRUE"},"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||ScatterPlot/ScatterPlotLoader.R'')","ScatterPlot.loader(input.filename=''outputfile'',concept.dependent=''||DEPENDENT||'',concept.independent=''||INDEPENDENT||'',concept.dependent.type=''||TYPEDEP||'',concept.independent.type=''||TYPEIND||'',genes.dependent=''||GENESDEPNAME||'',genes.independent=''||GENESINDNAME||'',snptype.dependent=''||SNPTYPEDEP||'',snptype.independent=''||SNPTYPEIND||'')"]},"dataTypes":{"subset1":["CLINICAL.TXT"]},"name":"Scatter Plot with Linear Regression","id":"scatterPlot"}'
 where module_name = 'scatterPlot';


 update searchapp.plugin_module
 set params='{"view":"SurvivalAnalysis","pivotData":false,"converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/BinData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Survival/BuildSurvivalData.R'')","SurvivalData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.time=\"||TIME||\",concept.category=\"||CATEGORY||\",concept.eventYes=\"||EVENTYES||\",binning.enabled=''||BINNING||'',binning.bins=''||NUMBERBINS||'',binning.type=''||BINNINGTYPE||'',binning.manual=''||BINNINGMANUAL||'',binning.binrangestring=''||BINNINGRANGESTRING||'',binning.variabletype=''||BINNINGVARIABLETYPE||'',input.gexFile=''||TEMPFOLDERDIRECTORY||mRNA/Processed_Data/mRNA.trans'',input.snpFile=''||TEMPFOLDERDIRECTORY||SNP/snp.trans'',concept.category.type=''||TYPEDEP||'',genes.category=''||GENESDEP||'',genes.category.aggregate=''||AGGREGATEDEP||'',sample.category=''||SAMPLEDEP||'',time.category=''||TIMEPOINTSDEP||'',snptype.category=''||SNPTYPEDEP||'',gpl.category=''||GPLCAT||'')"]},"variableMapping":{"||TIME||":"timeVariable","||SNPTYPEDEP||":"divDependentVariableSNPType","||CATEGORY||":"categoryVariable","||RBMPANELDEP||":"divDependentVariablerbmPanels","||TIMEPOINTSDEP||":"divDependentVariabletimepoints","||AGGREGATEDEP||":"divDependentVariableprobesAggregation","||GPLDEP||":"divDependentVariablegpls","||EVENTYES||":"censoringVariable","||TISSUEDEP||":"divDependentVariabletissues","||SAMPLEDEP||":"divDependentVariablesamples","||PLATFORMDEP||":"divDependentVariableplatforms","||GPLCAT||":"divDependentVariablegpls","||GENESDEPNAME||":"divDependentPathwayName","||BINNINGMANUAL||":"manualBinning","||BINNING||":"binning","||GENESDEP||":"divDependentVariablePathway","||NUMBERBINS||":"numberOfBins","||TYPEDEP||":"divDependentVariableType","||BINNINGTYPE||":"binDistribution","||BINNINGRANGESTRING||":"binRanges","||BINNINGVARIABLETYPE||":"variableType"},"renderer":{"GSP":"/survivalAnalysis/survivalAnalysisOutput"},"dataFileInputMapping":{"SNP.TXT":"snpData","MRNA_DETAILED.TXT":"mrnaData","CLINICAL.TXT":"TRUE"},"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Survival/CoxRegressionLoader.r'')","CoxRegression.loader(input.filename=''outputfile'')","source(''||PLUGINSCRIPTDIRECTORY||Survival/SurvivalCurveLoader.r'')","SurvivalCurve.loader(input.filename=''outputfile'',concept.time=''||TIME||'')"]},"dataTypes":{"subset1":["CLINICAL.TXT"]},"name":"Survival Analysis","id":"survivalAnalysis"}'
 where module_name = 'survivalAnalysis';


 update searchapp.plugin_module
 set params='{"id":"tableWithFisher","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/BinData.R'')","source(''||PLUGINSCRIPTDIRECTORY||TableWithFisher/BuildFisherData.R'')","FisherData.build(input.dataFile=''||TEMPFOLDERDIRECTORY||Clinical/clinical.i2b2trans'',concept.dependent=\"||DEPENDENT||\",concept.independent=\"||INDEPENDENT||\",binning.Dep.enabled=''||BINNINGDEP||'',binning.Indep.enabled=''||BINNINGINDEP||'',binning.Dep.bins=''||NUMBERBINSDEP||'',binning.Indep.bins=''||NUMBERBINSINDEP||'',binning.Dep.type=''||BINNINGTYPEDEP||'',binning.Indep.type=''||BINNINGTYPEINDEP||'',binning.Dep.manual=''||BINNINGMANUALDEP||'',binning.Indep.manual=''||BINNINGMANUALINDEP||'',binning.Dep.binrangestring=''||BINNINGRANGESTRINGDEP||'',binning.Indep.binrangestring=''||BINNINGRANGESTRINGINDEP||'',binning.Dep.variabletype=''||BINNINGVARIABLETYPEDEP||'',binning.Indep.variabletype=''||BINNINGVARIABLETYPEINDEP||'',input.gexFile=''||TEMPFOLDERDIRECTORY||mRNA/Processed_Data/mRNA.trans'',input.snpFile=''||TEMPFOLDERDIRECTORY||SNP/snp.trans'',concept.dependent.type=''||TYPEDEP||'',concept.independent.type=''||TYPEIND||'',genes.dependent=''||GENESDEP||'',genes.independent=''||GENESIND||'',genes.dependent.aggregate=''||AGGREGATEDEP||'',genes.independent.aggregate=''||AGGREGATEIND||'',sample.dependent=''||SAMPLEDEP||'',sample.independent=''||SAMPLEIND||'',time.dependent=''||TIMEPOINTSDEP||'',time.independent=''||TIMEPOINTIND||'',snptype.dependent=''||SNPTYPEDEP||'',snptype.independent=''||SNPTYPEIND||'')"]},"name":"Table with Fisher Test","dataTypes":{"subset1":["CLINICAL.TXT"]},"dataFileInputMapping":{"CLINICAL.TXT":"TRUE","MRNA_DETAILED.TXT":"mrnaData","SNP.TXT":"snpData"},"view":"TableWithFisher","pivotData":false,"processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||TableWithFisher/FisherTableLoader.R'')","FisherTable.loader(input.filename=''outputfile'')"]},"renderer":{"GSP":"/tableWithFisher/fisherTableOut"},"variableMapping":{"||AGGREGATEIND||":"divIndependentVariableprobesAggregation","||BINNINGVARIABLETYPEINDEP||":"variableTypeIndep","||GPLDEP||":"divDependentVariablegpls","||NUMBERBINSDEP||":"numberOfBinsDep","||BINNINGRANGESTRINGINDEP||":"binRangesIndep","||BINNINGMANUALDEP||":"manualBinningDep","||BINNINGRANGESTRINGDEP||":"binRangesDep","||BINNINGDEP||":"binningDep","||TIMEPOINTSDEP||":"divDependentVariabletimepoints","||RBMPANELDEP||":"divDependentVariablerbmPanels","||BINNINGTYPEINDEP||":"binDistributionIndep","||TYPEDEP||":"divDependentVariableType","||TYPEIND||":"divIndependentVariableType","||SNPTYPEIND||":"divIndependentVariableprobesAggregation","||GPLIND||":"divIndependentVariablegpls","||SNPTYPEDEP||":"divDependentVariableSNPType","||RBMPANELIND||":"divIndependentVariablerbmPanels","||TIMEPOINTIND||":"divIndependentVariabletimepoints","||DEPENDENT||":"dependentVariable","||GENESDEPNAME||":"divDependentPathwayName","||PLATFORMDEP||":"divDependentVariableplatforms","||GENESIND||":"divIndependentVariablePathway","||TISSUEDEP||":"divDependentVariabletissues","||SAMPLEIND||":"divIndependentVariablesamples","||BINNINGVARIABLETYPEDEP||":"variableTypeDep","||PLATFORMIND||":"divIndependentVariableplatforms","||GENESDEP||":"divDependentVariablePathway","||AGGREGATEDEP||":"divDependentVariableprobesAggregation","||SAMPLEDEP||":"divDependentVariablesamples","||TISSUEIND||":"divIndependentVariabletissues","||INDEPENDENT||":"independentVariable","||GENESINDNAME||":"divIndependentPathwayName","||BINNINGMANUALINDEP||":"manualBinningIndep","||BINNINGTYPEDEP||":"binDistributionDep","||NUMBERBINSINDEP||":"numberOfBinsIndep","||BINNINGINDEP||":"binningIndep"}}'
 where module_name = 'tableWithFisher';




  update searchapp.plugin_module
 set params='{"id":"hclust","converter":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Common/dataBuilders.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/ExtractConcepts.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/collapsingData.R'')","source(''||PLUGINSCRIPTDIRECTORY||Common/parseDirectory.R'')","source(''||PLUGINSCRIPTDIRECTORY||Heatmap/BuildHeatmapData.R'')","parseDirectory(topLevelDirectory=''||TOPLEVELDIRECTORY||'')","HeatmapData.build(input.gexFile=''||TOPLEVELDIRECTORY||/workingDirectory/mRNA.trans'',genes=''||GENES||'',genes.aggregate=''||AGGREGATE||'',sample.subset1=''||SAMPLE1||'',time.subset1=''||TIMEPOINTS1||'',tissues.subset1=''||TISSUES1||'',platform.subset1=''||GPL1||'',sample.subset2=''||SAMPLE2||'',time.subset2=''||TIMEPOINTS2||'',tissues.subset2=''||TISSUES2||'',platform.subset2=''||GPL2||'')"]},"name":"Hierarchical Clustering","dataFileInputMapping":{"CLINICAL.TXT":"FALSE","SNP.TXT":"snpData","MRNA_DETAILED.TXT":"TRUE"},"dataTypes":{"subset1":["CLINICAL.TXT"]},"pivotData":false,"view":"HClust","processor":{"R":["source(''||PLUGINSCRIPTDIRECTORY||Heatmap/HClusteredHeatmapLoader.R'')","HClusteredHeatmap.loader(input.filename=''outputfile'',imageWidth=||IMAGE_WIDTH||,imageHeight=||IMAGE_HEIGHT||,pointsize=||TEXT_POINT_SIZE||,maxDrawNumber=||MAXDRAWNUMBER||)"]},"renderer":{"GSP":"/RHClust/heatmapOut"},"variableMapping":{"||GENES||":"divIndependentVariablePathway","||AGGREGATE||":"divIndependentVariableprobesAggregation","||TIMEPOINTS1||":"divIndependentVariabletimepoints","||TISSUES1||":"divIndependentVariabletissues","||SAMPLE1||":"divIndependentVariablesamples","||GPL1||":"divIndependentVariablegplsValue","||TIMEPOINTS2||":"divIndependentVariabletimepoints2","||TISSUES2||":"divIndependentVariabletissues2","||SAMPLE2||":"divIndependentVariablesamples2","||GPL2||":"divIndependentVariablegplsValue2","||IMAGE_HEIGHT||":"txtImageHeight","||IMAGE_WIDTH||":"txtImageWidth","||TEXT_POINT_SIZE||":"txtImagePointsize","||MAXDRAWNUMBER||":"txtMaxDrawNumber"}}'
 where module_name = 'hclust';


SELECT pg_catalog.setval('searchapp.plugin_module_seq', 1, false);

SELECT pg_catalog.setval('searchapp.plugin_seq', 1, false);

