###########One way ANOVA###############

# form a data frame and merge it to get sumaary for ANOVA#######
Front<-c(82, 83, 97, 93, 55, 67, 53)
Moddle<-c(83, 78, 68, 61, 77, 54, 69, 51, 63)
Back<-c(38, 59, 55, 66, 45, 52, 52, 61)

or 

####Import a data and apply following steps############

View(ANOVA_problem)
####Get summary of variable along three samples#######
library(dplyr)
group_by(ANOVA_problem, level) %>%
  summarise(
    count = n(),
    mean = mean(marks, na.rm = TRUE),
    sd = sd(marks, na.rm = TRUE)
  )

########plot a boxplot##################
boxplot(marks ~ level, data = ANOVA_problem,
        xlab = "Level", ylab = "Marks",
        frame = FALSE, col = c("#00AFBB", "#E7B800", "#FC4E07"))


############apply ANOVA command##########################
res.aov <- aov(marks ~ level, data = ANOVA_problem)

#Get a summary
summary(res.aov)

##Print the result of ANOVA test
print(res.aov)



#####Import a data and select a sample including three or more level
View(marketing_campaign)
table1<-table(marketing_campaign$Marital_Status) ####apply one way anova and see the result
####here random sampling is needed