.onLoad = function(libname,pkgname) {
  library(CreateFlowChart);
  library(CreateConceptSetDatasets);
  library(ApplyComponentStrategy);
  library(CreateSpells);
  library(CountPersonTime);
  print("Loaded packages: CreateFlowChart, CreateConceptSetDatasets, ApplyComponentStrategy,
        CreateSpells, CountPersonTime");
}
