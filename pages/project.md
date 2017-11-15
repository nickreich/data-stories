---
layout: page
title: Project Description
---

#### Project Assignment
For the project you will create, in small groups, a thorough analysis of a particular dataset. For each dataset, the goal is to tell an interesting story about the dataset. The analysis project will have components completed by the group and by each individual student. Each group will prepare a formal written report. 

Each group will be expected to hand in the following items

1. a PDF file containing the data analysis write-up that has been typeset using RMarkdown/knitr submitted online via Google Drive, and
2. a single paper copy of the final report submitted to the instructors mailbox on the 4th floor of Arnold House.

The instructor will divide each table into two teams and each team will choose their own dataset to work on from the list at the bottom of this file, or, with permission of the instructor, a dataset of their own.

#### Guidelines for the project write-up

As a team, your group should read at least 1-2 papers that describe the dataset, to verse yourselves in the background of the dataset. Your group will then assemble an outline of the key elements of the story that you want to tell about the dataset and which team member will be responsible for at each element. The general idea is that each element focuses on one key observation or insight about the dataset. Don't overburden your team with a story with lots of different elements. Try to tell a short, compelling story with a small number of elements. Ideally, each each teammate has one and only one. The elements should complement each other and together tell a coherent story about your dataset. At least one element must include a regression model, however an element could be as simple as a few detailed data graphics that together provide a unique path through and insight into the dataset. Every element should have at least two key graphics that illustrate the main storyline.

Overall, the project write-up should be written in clear, concise prose, suitable for publication in a professional setting (e.g. formal report, scientific article, not-too-chatty blog post). No code should be shown in the write-up, although it is expected that results provided in the write-up will be dynamically generated (i.e. if you report the results from a regression, you are calling the results directly from R and not inputting the numbers directly into the .Rmd file). You will need to be very judicious in your choices of what to include in the write-up, only leaving the items most central to the write-up's overall goals and storyline. 

Please follow the structure and page limits given below:

* cover page (title, names, table of contents): 1 page
* group data analysis (including tables/figures): 2 pages
* each individual data analysis (including tables/figures): 2 pages
* conclusion/discussion: 1 page

No page-cramming: i.e. nothing smaller than 11-point font, no less than 1 inch margins all around.

_Group Data Analysis_

The group-written data analysis will provide a brief summary of key features of the dataset. You should define and summarize each variable that will be used, either in a table or graphically, or both. Any central hypotheses or relationships that will be tested or explored should be defined here. At least a few sentences of context and description of the dataset should be included. This section should include a few tables and/or figures and should be no more than two pages long. Description of how missing data was handled (if you have any) should be included here (see more detail below).

_Individual Data analyses_

Each member of the group will lead a particular thread of analysis and/or dataset exploration that helps tell a story about the assigned dataset.  The write-up for each individual data analysis should not exceed two pages, including tables and figures. The individual write-ups should be focused on a key element of, relationship within, or insight about the dataset. 

Examples of elements are:

1. identifying and describing, using appropriate analytical tools (e.g. a regression model) to descibe relationships important variables in your dataset. This might include fitting a regression model and interpreting the output, with particular attention paid to a relationship that you know scientifically to be a question of interest.
2. showing, using an in-depth or sequence of data visualizations, an important feature of relationship within your dataset.
3. creating and evaluating predictions from your model.
4. fitting and describing key features of this a regression model, such as discussing the possible influence of outlying points, missing data, non-linear relationships, etc... 

The data analysis write-up will contain a section for each group member's analysis and a conclusion that summarizes and synthesizes the results. 

#### Project grading
Your project grade makes up 25% of your final grade for the class and will be calculated as follows:

* The final product produced by the group: 50 points
  * 30 points: group data summary (clarity of data summary, quality of graphics/tables, adequate and accurate explanations of data, specific hypotheses defined, results summarized in conclusion/discussion section)
  * 15 points: uniformity of presentation (individual write-ups have same look and feel, the project feels like a single work, not too disjointed, topic coordination a plus)
  * 5 points: project details (page limits adhered to, appropriate sectioning, etc...)
* Individually prepared data analysis: 50 points
  * 35 points: overall quality of analysis (correct implementation and interpretation of method(s) used, appropriate use of equations to show what methods/models have been used, appropriate use of graphics/tables to support central results, succinct summary of key results)
  * 10 points: clarity and presentation (clear statement/summary of goals and central results, clear and accurate description of methods/models used, use of figures rather than text to illustrate central ideas, page limit adhered to)

To evaluate group participation and contributions, I will be using the following approach to evaluate each of your contributions to the project. Each student will be given 100 points to allocate among your teammates (excluding yourself). The more points you give to a teammate, the more you are indicating they contributed to the project. You cannot allocate the same number of points for any two team members. I reserve the right to intervene to correct gross imbalances in allocations if necessary. The number of points that you receive from your teammates will be summed, divided by 100, and then used as a multiplier on the final grade for the 50-point group component of the project. 

As an example: Your group receives 40/50 points for the "final product produced by the group". You have three teammates who give you scores of 35, 40 and 30, respectively. Therefore, you receive a total of 105 points from your teammates. So your final "group" grade is (40/50) * (105/100) = 0.84 = 42/50.


#### Milestones and deadlines

See [this page](proj-outline.md) for a complete description of project milestones.

* Tues Nov 14: Make Google Drive folder for the group
* Fri Nov 17: Group ouline and individual topics proposed (1 paragraph summary, submitted to instructors on Google Drive by 5pm)
* Wed Nov 29: Draft of group data description write-up due, 5pm
* Thurs, Nov 30: presentation of group data descriptions/projects
* Wed Dec 6: Draft of individual data analysis due, 5pm
* Fri Dec 15: project handed in, by 5pm (digital copies on Google Drive, physical copies to Nick Reich's mailbox, 4th floor of Arnold House)


#### Possible Datasets

Your group may choose from any of the datasets listed below. If you would like to use a dataset that is not listed below, you must obtain permission from the instructor.

* __State-level flu data from the US CDC.__ This data is freely available as a time-series of counts from 50 states/territories in the US. Challenges include modeling count data, modeling grouped binary outcome data, time-series, forecasting, spatial data, mapping. The data can be accessed using the [cdcfluview package](https://github.com/hrbrmstr/cdcfluview), which has a new version available on GitHub. This version is substantially different than the one available on CRAN.
* __Regional-level flu data from the US CDC.__ Mostly the same as above, but data is reported for the for the 10 US Health and Human Services "regions" and the national level in aggregate. An overview of flu surveillance at the CDC is [here](https://www.cdc.gov/flu/weekly/overview.htm). Papers on the flu datasets include [this](https://bmcinfectdis.biomedcentral.com/articles/10.1186/s12879-016-1669-x), [this](https://arxiv.org/abs/1703.10936), and [this](http://journals.plos.org/ploscompbiol/article/authors?id=10.1371/journal.pcbi.1004382).
* __Dengue fever incidence in Thailand.__ A [dataset is available from a forthcoming publication](https://github.com/reichlab/annual-predictions-paper) that has monthly incidence of dengue hemorrhagic fever for each of the 76 provinces of Thailand. Code is also available to download weather data from three different governmental sources that can be used as predictors of incidence.
* Gender gap developmental data.__ This data is from [an article published in Science](http://science.sciencemag.org/content/355/6323/389) in January 2017 about the gender-gap in childhood stereotypes about intellectual ability. The [data is available through the Open Science Framework](https://osf.io/yund6/?view_only=9a8505d4e87b456a89f255b43e21234e).
* __Several studies on political viewpoints, sexuality, prejudice, etc...__ [Dr. David Broockman](https://people.stanford.edu/dbroock/) has published a wide array of interesting research on public opinion, voter behavior, minority groups and prejudice, and political polarization. Many of these studies have data and analysis code available online, for example, [this one](https://dataverse.harvard.edu/dataset.xhtml?persistentId=doi%3A10.7910/DVN/RAMHWP). 
* __Women's Health and Aging Study (WHAS).__ The WHAS Study was a population-based prospective cohort of women age 65 in Baltimore, Maryland, designed to identify and answer questions about risk factors for older women becoming frail. We have 682 observations on women from this cohort. Challenges involve missing data, risk prediction, skewed data, and binary or categorical outcome data. Data is available from instructor upon request.
* __Framingham Heart Study (FHS).__ This [prospective cohort study](https://www.framinghamheartstudy.org/) has been going on for decades and has collected a wealth of data on the health of individuals and their families over long periods of time. We have a subset of their data for teaching purposes. Data is available on Google Drive.
* __The HELP study.__ This study looked at the association between substance abuse and physical/sexual abuse. Data is available on Google Drive.
* __The DIG Trial data.__ "The DIG Trial was a randomized, double-blind, multicenter trial with more than 300 centers in the United States and Canada participating. The purpose of the trial was to examine the safety and efficacy of Digoxin in treating patients with congestive heart failure in sinus rhythm." This data is available on Google Drive.


