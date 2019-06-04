## ---- eval=FALSE---------------------------------------------------------
#  vtable(data,
#      out=NA,
#      file=NA,
#      labels=NA,
#      class=TRUE,
#      values=TRUE,
#      missing=FALSE,
#      index=FALSE,
#      factor.limit=5,
#      char.values=FALSE,
#      data.title=NA,
#      desc=NA,
#      col.width=NA,
#      summ=NA)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  #Example 1, using base data LifeCycleSavings
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings)
#  
#  #Example 2, using constructed data frame
#  df <- data.frame(var1 = 1:4, var2 = c('A','B','C','D'))
#  vtable(df)
#  
#  #Example 3, using matrix with column names
#  matrix <- as.matrix(df)
#  vtable(df)
#  
#  #Example 4, using efc data with embedded variable labels
#  library(sjlabelled)
#  data(efc)
#  vtable(efc)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings)
#  vtable(LifeCycleSavings,out='browser')
#  vtable(LifeCycleSavings,out='viewer')
#  htmlcode <- vtable(LifeCycleSavings,out='htmlreturn')
#  vartable <- vtable(LifeCycleSavings,out='return')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings,file='lifecycle_variabledocumentation')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  #Note that LifeCycleSavings has five variables
#  data(LifeCycleSavings)
#  #These variable labels are taken from help(LifeCycleSavings)
#  labs <- c('numeric aggregate personal savings',
#      'numeric % of population under 15',
#      'numeric % of population over 75',
#      'numeric real per-capita disposable income',
#      'numeric % growth rate of dpi')
#  vtable(LifeCycleSavings,labels=labs)
#  
#  labs <- c('numeric aggregate personal savings',NA,NA,NA,NA)
#  vtable(LifeCycleSavings,labels=labs)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  #Note that LifeCycleSavings has five variables
#  #with names 'sr', 'pop15', 'pop75', 'dpi', and 'ddpi'
#  data(LifeCycleSavings)
#  #These variable labels are taken from help(LifeCycleSavings)
#  labs <- data.frame(nonsensename1 = c('sr', 'pop15', 'pop75'),
#  nonsensename2 = c('numeric aggregate personal savings',
#      'numeric % of population under 15',
#      'numeric % of population over 75'))
#  vtable(LifeCycleSavings,labels=labs)
#  
#  labs <- as.matrix(labs)
#  vtable(LifeCycleSavings,labels=labs)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  #Note that LifeCycleSavings has five variables
#  #with names 'sr', 'pop15', 'pop75', 'dpi', and 'ddpi'
#  data(LifeCycleSavings)
#  #These variable labels are taken from help(LifeCycleSavings)
#  labs <- data.frame(sr = 'numeric aggregate personal savings',
#      pop15 = 'numeric % of population under 15',
#      pop75 = 'numeric % of population over 75')
#  vtable(LifeCycleSavings,labels=labs)
#  
#  labs <- as.matrix(labs)
#  vtable(LifeCycleSavings,labels=labs)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings)
#  vtable(LifeCycleSavings,class=FALSE)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings,values=FALSE)
#  vtable(LifeCycleSavings)
#  
#  #CO2 contains factor variables
#  data(CO2)
#  vtable(CO2)
#  
#  #efc contains labeled values
#  #Note that the original value labels do not tell easily you what numerical
#  #value each label maps to, but vtable() does.
#  library(sjlabelled)
#  data(efc)
#  vtable(efc)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  LifeCycleSavings$sr[1] <- NA
#  vtable(LifeCycleSavings,missing=TRUE)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings,index=TRUE)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  #CO2 contains factor variables
#  data(CO2)
#  vtable(CO2)
#  vtable(CO2,factor.limit=1)
#  vtable(CO2,factor.limit=0)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(USJudgeRatings)
#  USJudgeRatings$Judge <- row.names(USJudgeRatings)
#  USJudgeRatings$SecondCharacter <- 'Less Interesting'
#  USJudgeRatings$ThirdCharacter <- 'Less Interesting Still!'
#  
#  #Show values for all character variables
#  vtable(USJudgeRatings,char.values=TRUE)
#  #Or just for a subset
#  vtable(USJudgeRatings,char.values=c('Judge','SecondCharacter'))

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings)
#  vtable(LifeCycleSavings,data.title='Intercountry Life-Cycle Savings Data')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings)
#  vtable(LifeCycleSavings,data.title='Intercountry Life-Cycle Savings Data',
#      desc='Data on the savings ratio 1960–1970.')
#  vtable(LifeCycleSavings,data.title='Intercountry Life-Cycle Savings Data',
#      desc='omit')
#  vtable(LifeCycleSavings,data.title='Intercountry Life-Cycle Savings Data',
#      desc='Data on the savings ratio 1960–1970. omit')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  library(sjlabelled)
#  
#  data(efc)
#  vtable(efc)
#  #The variable names in this data set are pretty short, and the value labels are
#  #a little cramped, so let's move that over.
#  vtable(efc,col.width=c(10,10,40,40))

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  library(sjlabelled)
#  data(efc)
#  
#  vtable(efc,summ=c('mean(x)','countNA(x)'))

## ---- eval=FALSE---------------------------------------------------------
#  labeltable(var,
#      ...,
#      out=NA,
#      file=NA,
#      desc=NA)

## ---- eval=FALSE---------------------------------------------------------
#  #Include a single labelled variable to show how the values of that variable correspond to its value labels.
#  library(sjlabelled)
#  data(efc)
#  labeltable(efc$e15relat)
#  
#  #Include more than one variable to show, for each value of the first, what values of the others are present in the data.
#  data(mtcars)
#  labeltable(mtcars$cyl,mtcars$carb,mtcars$am)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  vtable(LifeCycleSavings,file='lifecycle_variabledocumentation')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  dftoHTML(LifeCycleSavings)

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  dftoHTML(LifeCycleSavings)
#  dftoHTML(LifeCycleSavings,out='browser')
#  dftoHTML(LifeCycleSavings,out='viewer')
#  htmlcode <- dftoHTML(LifeCycleSavings,out='htmlreturn')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  dftoHTML(LifeCycleSavings,file='lifecycledata_htmlversion.html')

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  dftoHTML(LifeCycleSavings)
#  #Let's make sr much bigger for some reason
#  dftoHTML(LifeCycleSavings,col.width=c(60,10,10,10,10))
#  

## ---- eval=FALSE---------------------------------------------------------
#  library(vtable)
#  
#  data(LifeCycleSavings)
#  dftoHTML(LifeCycleSavings,row.names=TRUE)

