---
title: "Project 3 - Cyber Security"
author: "Munkhnaran Gankhuyag"
date: "October 20, 2017"
output:
  pdf_document: default
  html_document: default
---
```{r}
library(XML)
library(rvest)
library(stringr)
```

##Cyber Security Job 1 
Deloitte - Data Scientist Engineer
```{r}
Cyber1 <- read_html("https://jobs2.deloitte.com/us/en/job/DELOA004X152711/Cyber-Data-Scientist-Engineer?src=JB-16801")
Cyber1
```
```{r}
Cyber1_Skills <- html_nodes(Cyber1, "ul:nth-child(19), ul:nth-child(16)")
Cyber1_Skills
```
```{r}
Cyber1_skills1 <- html_text(Cyber1_Skills)
Cyber1_skills1
```


Since the words are connected, I didn't know how to seperate them without using 
specific spacing, so I took the individual requirements.


```{r}
Deloitte1 <- str_extract(Cyber1_skills1[1], fixed("Bachelor's Degree in computer science, mathematics, or statistics, or related field", ignore_case = TRUE))
Deloitte2 <- str_extract(Cyber1_skills1[1], fixed("2+ years of relevant consulting or industry experience", ignore_case = TRUE))
Deloitte3 <- str_extract(Cyber1_skills1[1], fixed("Proven experience effectively prioritizing workload to meet deadlines and work objectives", ignore_case = TRUE))
Deloitte4 <- str_extract(Cyber1_skills1[1], fixed("Demonstrated ability to write clearly, succinctly, and in a manner that appeals to a wide audience", ignore_case = TRUE))
Deloitte5 <- str_extract(Cyber1_skills1[1], fixed("Proficiency in word processing, spreadsheet, and presentation creation tools, as well as Internet research tools", ignore_case = TRUE))
Deloitte6 <- str_extract(Cyber1_skills1[1], fixed("Ability to obtain and maintain the required clearance for this role", ignore_case = TRUE))
Deloitte7 <- str_extract(Cyber1_skills1[1], fixed("At least a Secret Clearance", ignore_case = TRUE))
Deloitte8 <- str_extract(Cyber1_skills1[1], fixed("SQL", ignore_case = TRUE))
Deloitte9 <- str_extract(Cyber1_skills1[1], fixed("Python Amazon Web Services", ignore_case = TRUE))
Deloitte10 <- str_extract(Cyber1_skills1[1], fixed("Business Intelligence Reporting", ignore_case = TRUE))
Deloitte11 <- str_extract(Cyber1_skills1[1], fixed("Agile Software Development Methodology", ignore_case = TRUE))
Deloitte12 <- str_extract(Cyber1_skills1[1], fixed("Advanced Statistical Analysis & Modeling", ignore_case = TRUE))

cyber1_skills1_Required <- c(Deloitte1,Deloitte2,Deloitte3,Deloitte4,Deloitte5,Deloitte6,Deloitte7,Deloitte8,Deloitte9,Deloitte10,Deloitte11,Deloitte12)
cyber1_skills1_Required
```
```{r}
Deloitte.1 <- str_extract(Cyber1_skills1[2], fixed("Previous Federal Consulting experience", ignore_case = TRUE))
Deloitte.2 <- str_extract(Cyber1_skills1[2], fixed("Understanding of fundamental cloud computing concepts", ignore_case = TRUE))
Deloitte.3 <- str_extract(Cyber1_skills1[2], fixed("Experience with Information Assurance concepts and processes within the Federal governmen", ignore_case = TRUE))
Deloitte.4 <- str_extract(Cyber1_skills1[2], fixed("Knowledge of and experience with Federal security regulations, standards, and processes including FISMA, FIPS, NIST, and FedRAMP", ignore_case = TRUE))
Deloitte.5 <- str_extract(Cyber1_skills1[2], fixed("Apache Kafka", ignore_case = TRUE))
Deloitte.6 <- str_extract(Cyber1_skills1[2], fixed("Netflow aggregators, e.g. StealthWatch", ignore_case = TRUE))
Deloitte.7 <- str_extract(Cyber1_skills1[2], fixed("Log aggregation systems, e.g. Splunk, ELK", ignore_case = TRUE))
Deloitte.8 <- str_extract(Cyber1_skills1[2], fixed("Network monitoring systems, e.g. Bro, Suricata", ignore_case = TRUE))
Deloitte.9 <- str_extract(Cyber1_skills1[2], fixed("Packet processing", ignore_case = TRUE))
Deloitte.10 <- str_extract(Cyber1_skills1[2], fixed("Docker", ignore_case = TRUE))
Deloitte.11 <- str_extract(Cyber1_skills1[2], fixed("Apache Jena", ignore_case = TRUE))
Deloitte.12 <- str_extract(Cyber1_skills1[2], fixed("Apache Mesos", ignore_case = TRUE))

cyber1_skills1_Preferred <- c(Deloitte.1,Deloitte.2,Deloitte.3,Deloitte.4,Deloitte.5,Deloitte.6,Deloitte.7,Deloitte.8,Deloitte.9,Deloitte.10,Deloitte.11,Deloitte.12)
cyber1_skills1_Preferred
```
```{r}

Cyber1_skills1_all <- list(c(cyber1_skills1_Required,cyber1_skills1_Preferred))
Cyber1_skills1_all
```

##Cyber Security Job 2 
Next Gen Cyber - Data Scientist

```{r}
Cyber2 <- read_html("https://www.nextgencybercareers.com/job/183/data-scientist/")
Cyber2
```

```{r}
Cyber2_Skills <- html_nodes(Cyber2, "ul:nth-child(10) , ul:nth-child(8)")
Cyber2_Skills
```

```{r}
Cyber2_Skills2 <- html_text(Cyber2_Skills)
Cyber2_Skills2
```

This one is seperated by "\n", so it was easier to split.

```{r}
NextCyber_Required <- str_split(Cyber2_Skills2[1],pattern = "\n")
NextCyber_Required
```
```{r}
NextCyber_Preferred <- str_split(Cyber2_Skills2[2],pattern = "\n")
NextCyber_Preferred
```

```{r}
Cyber2_skills2_all <- list(c(NextCyber_Required,NextCyber_Preferred))
Cyber2_skills2_all
```

##Cyber Security Job 3
Security Score Card Inc. - Senior Data Scientist


```{r}
Cyber3 <- read_html("https://www.glassdoor.com/job-listing/senior-data-scientist-securityscorecard-JV_IC1132348_KO0,21_KE22,39.htm?jl=1978832215")
Cyber3
```

```{r}
Cyber3_Skills <- html_nodes(Cyber3,"p:nth-child(3) , #JobDescContainer p:nth-child(2)")
Cyber3_Skills
```

```{r}
Cyber3_Skills3 <- html_text(Cyber3_Skills)
Cyber3_Skills3
```

```{r}
Security_Scorecard_1 <- str_split(Cyber3_Skills3[1],pattern = "- ")
Security_Scorecard_1
```

```{r}
Security_Scorecard_2 <- str_split(Cyber3_Skills3[2],pattern = "- ")
Security_Scorecard_2
```
```{r}
Cyber3_skills3_all<- list(c(Security_Scorecard_1,Security_Scorecard_2))
Cyber3_skills3_all
```
##Cyber Security Job 4
Novetta - Cyber Security Data Scientist

```{r}
Cyber4 <- read_html("https://career4.successfactors.com/career?career_ns=job_listing&company=novetta&navBarLevel=JOB_SEARCH&rcm_site_locale=en_US&career_job_req_id=22561&selected_lang=en_US&jobAlertController_jobAlertId=&jobAlertController_jobAlertName=&_s.crb=n17kqKsnxhTfHbEykMzNLGiVOjw=&jobPipeline=Indeed")
Cyber4
```

```{r}
Cyber4_Skills <- html_nodes(Cyber4, "p:nth-child(23) , p:nth-child(24) , p:nth-child(25) , p:nth-child(19) , p:nth-child(20) , p:nth-child(18) , p:nth-child(17) , p:nth-child(16) , p:nth-child(15)")

Cyber4_Skills
```

```{r}
Cyber4_Skills4_all <- html_text(Cyber4_Skills)
Cyber4_Skills4_all
```
##Cyber Security Job 5
CIA - Data Scientist


```{r}
 Cyber5 <- read_html("https://www.cia.gov/careers/opportunities/science-technology/data-scientist.html")
Cyber5
```

```{r}
Cyber5_Skills <- html_nodes(Cyber5,"ul:nth-child(17) li , ul:nth-child(15) li")
Cyber5_Skills
```

```{r}
Cyber5_Skills5_all <- html_text(Cyber5_Skills)
Cyber5_Skills5_all
```
##Cyber Security Job 6
Battelle - Cyber Computer Scientist

```{r}
Cyber6 <- read_html("http://jobs.battelle.org/ShowJob/Id/1358503/Cyber%20Computer%20Scientist%20Early%20Career")
Cyber6
```

```{r}
Cyber6_Skills <- html_nodes(Cyber6,"ul:nth-child(25) , ul:nth-child(22)")
Cyber6_Skills
```

```{r}
Cyber6_Skills6 <- html_text(Cyber6_Skills)
Cyber6_Skills6
```

```{r}
Cyber6_Skills6_All <- str_split(Cyber6_Skills6, pattern = "\n\t")
Cyber6_Skills6_All
```
##Cyber Security Job 7
Amazon - Data Scientist/Security Architect



```{r}
Cyber7 <- read_html("https://www.amazon.jobs/en/jobs/575969/data-scientist-security-architect")
Cyber7
```

```{r}
Cyber7_Skills <- html_nodes(Cyber7, "#job-detail .section+ .section p")
Cyber7_Skills
```

```{r}
Cyber7_Skills7 <- html_text(Cyber7_Skills)
Cyber7_Skills7
```

```{r}
Amazon_Qualifications <- str_split(Cyber7_Skills7[1],pattern = "·")
Amazon_Qualifications
```

```{r}
Amazon_Preferred <- str_split(Cyber7_Skills7[2],"·")
Amazon_Preferred
```
```{r}
Cyber7_Skills7_all <- list(c(Amazon_Qualifications,Amazon_Preferred))
Cyber7_Skills7_all
```
##Cyber Security Job 8
Intelletec - Data Scientist Cyber Security

```{r}
Cyber8<- read_html("https://www.intelletec.com/jobs/senior-data-scientist-cyber-security")
Cyber8
```

```{r}
Cyber8_Skills <- html_nodes(Cyber8,".col-sm-12.clearfix li:nth-child(3) , #body li:nth-child(7) , #body li:nth-child(6) , .col-sm-12.clearfix li:nth-child(5) , .col-sm-12.clearfix li:nth-child(4) , .col-sm-12.clearfix li:nth-child(2) , .col-sm-12.clearfix li:nth-child(1)")
Cyber8_Skills
```

```{r}
Cyber8_Skills_all <- html_text(Cyber8_Skills)
Cyber8_Skills_all
```
##Cyber Security Job 9
JP Morgan Chase - Data Protection Engineer/Cyber Security


```{r}
Cyber9 <- read_html("https://jobs.jpmorganchase.com/ShowJob/Id/68258/Data-Protection-Engineer-Cyber-Security/")
Cyber9
```

```{r}
Cyber9_Skills <- html_nodes(Cyber9,"li div")
Cyber9_Skills
```

```{r}
Cyber9_Skills_all <- html_text(Cyber9_Skills)
Cyber9_Skills_all
```

All Requirements listed

```{r}
Cyber_skills_all <-
list(c(Cyber1_skills1_all,Cyber2_skills2_all,Cyber3_skills3_all,Cyber4_Skills4_all,Cyber5_Skills5_all,Cyber6_Skills6_All,Cyber7_Skills7_all,Cyber8_Skills_all,Cyber9_Skills_all))
Cyber_skills_all
```

```{r}
Clean_data <- read.csv(url("https://raw.githubusercontent.com/mikegankhuyag/607-Projects/master/Book2.csv"))
head(Clean_data)
```

```{r}
Technical_Skills <- Clean_data[Clean_data$Skill.Type == "Programming/Technical",]
head(Technical_Skills)
```

```{r}
Technical_Skills2 <- sort(table(Technical_Skills$Skill),decreasing = TRUE)
Technical_Skills3 <- data.frame(Technical_Skills2[1:10])
```

```{r}
library(ggplot2)
ggplot(Technical_Skills3, aes(x = Technical_Skills3$Var1, y = Technical_Skills3$Freq, fill = Technical_Skills3$Freq)) + 
geom_bar(stat="identity", color="black ")+
theme_minimal()+
  ggtitle("Top Technical Data Science Skills in Cyber Security")+
  xlab("Skills") + 
  ylab("Frequency") + 
    theme(axis.text.x = element_text(angle = 70, hjust = 1),legend.position = "none", panel.background = element_rect(fill="gray", colour = "lightblue"))

```

```{r}
Overall <- sort(table(Clean_data$Skill),decreasing = TRUE)
data.frame(Overall)
```

