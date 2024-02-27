---
tags: source
type: article
title: "A meaningful file structure for R projects"
author: "Mira Céline Klein"
publisher: "inwt"
date: 2017-08-08
url: "https://www.inwt-statistics.com/blog/a-meaningful-file-structure-for-r-projects"
---
# A meaningful file structure for R projects
[[Mira Céline Klein]] wrote this article for [[inwt]].
> [!summary] Summary
> %% Write a one-sentence summary of the source. %%

## Notes
> The first folder is called RScripts. It contains all scripts written in R. Typical examples are scripts for data preparation and data analysis. We recommend to number the scripts in the order they need to be executed.

 An R project contains an RScripts directory to contain all of the scripts used to process data and write the report.

> Scripts may produce outputs. Outputs can be data, as in spreadsheet-like tabular form, or any other form like graphics, tables as .tex files, etc. These outputs are then stored either in a data or a results folders. The distinction between the two folders is sometimes fuzzy, but in general the data folder stores everything the data analysis is based on. The results folder is used to store the final outputs of an analysis and not some intermediate steps. This folder may live inside the data folder or also in the root.

 A quarto project stores raw and processed data in a `data` folder, and the final report in a `results` folder.

> All data (raw and processed) live in the folder data. This includes different file formats such as .Rdata, .xlsx or .csv.

> The reports folder contains the reports we create with R Markdown. For these reports we have our own R Markdown templates and ggplot2 theme. Complying to corporate design guidelines has never been easier.