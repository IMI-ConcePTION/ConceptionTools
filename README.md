# ConceptionTools
Wrapper R package containing all ConcePTION R packages

The repositories of the packages gathered in this wrapper are the following


- **packages to retrieve records from the data**

   - [CreateConceptSetDatasets](https://github.com/ARS-toscana/CreateConceptSetDatasets): this function retrieves records based on lists of codes (concept sets). It inspects a set of input tables af data and creates a group of datasets, each corresponding to a concept set. Each dataset contains the records of the input tables that match the corresponding concept set and is named out of it.
   - [CreateItemsetDatasets](https://github.com/ARS-toscana/CreateItemsetDatasets): this function retrieves records based on list of strings (item sets). It inspects a set of input tables af data and creates a group of datasets, each corresponding to a item set. Each dataset contains the records of the input tables that match the corresponding item set and is named out of it.

- **packages to process records recordwise, or across records of the same subject** 

   - [MergeFilterAndCollapse](https://github.com/ARS-toscana/MergeFilterAndCollapse): this function accesses a dataset containing one observation per unit of observation that is to be merged with one or more longitudinal datasets. The result is then filtered per some conditions (eg on the timeframe of the longitudinal observations), and then, as an option, collapsed to obtain again one record per unit of observation.
   - [CreateSpells](https://github.com/ARS-toscana/CreateSpells): this function takes as input a dataset with multiple time windows per unit of observation. Multiple categories of time windows may be recorded per unit, and time windows of the same unit may overlap, even within the same category. The purpose of the function is to create a dataset where the time windows of each person and category are disjoint (i.e., spells)

- **packages to inspect components of a same variable** 

   - [ApplyComponentStrategy](https://github.com/ARS-toscana/ApplyComponentStrategy): this function takes as input a dataset where component algorithms have been assigned, and the instructions to build composite algorithms based on them. It produces a dataset where the composites have been calculated, and a dataset where the overlap of selected pairs of algorithms is computed

- **packages to produce analytic datasets** 

   - [CreateFlowChart](https://github.com/IMI-ConcePTION/CreateFlowChart): this function applies exclusion criteria to a dataset of persons and produces the study population, as well as a dataset of counts of the impact of each exclusion criterion.
   - [CountPersonTime](https://github.com/IMI-ConcePTION/CountPersonTime): this function splits the person time of each person, discards person time that is outside of the study period, and labels the remaining period with calendar years (or months or days) according to (possibly time-dependent) categorical variables; moreover, it computes person time per each of the events of interest, by applying censoring after the first occurrence of the event, and indicates whether an event is observed; finally, it counts events; the putput can be individual or aggregated.
   - [CountPrevalence](https://github.com/IMI-ConcePTION/CountPrevalence): this function is meant to be used in studies where point and/or period prevalence of one or more conditions, or prevalence of use of a medicinal product, need to be computed in multiple points or spans of times (years, or months, ...), possibly across strata of categorical variables such as age band and/or sex.

   
- **tools to support study design** 
   - [create_diagram](https://github.com/ARS-toscana/draw.ioR): this function is meant to generate the computational graph of a script, based on the index file of the intermediate datasets.
   
The following packages are under development

   - [CreateDaysOfTreatment](https://github.com/IMI-ConcePTION/CreateDaysOfTreatment): this function takes as input a dataset containing longitudinal records of prescriptions or dispensings, alongside with other information (e.g., Defined Daily Dose (DDD)), and a ‘recipe’ of choice of the investigator. The output of CreateDOT is a new variable containing the number of days of treatment prescribed/dispensed, per individual prescription/dispensing record. 
  
  - [Cube](https://github.com/ARS-toscana/Cube/wiki): this function takes as input a dataset with measures labelled with a combination of the minimum levels of a set of predefined dimensions. Dimensions may be numeric or character variables. The function applies summary statistics (sum, mean, ...) to specified numeric columns. Summary statistics are computed over all the permutations of all levels of the dimensions, thus generating partial statistics.
