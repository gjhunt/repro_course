# ---
# jupyter:
#   jupytext:
#     formats: ipynb,qmd,R
#     text_representation:
#       extension: .R
#       format_name: light
#       format_version: '1.5'
#       jupytext_version: 1.14.7
#   kernelspec:
#     display_name: R
#     language: R
#     name: ir
# ---

url = 'https://tinyurl.com/35vnmbzm'
titanic = read.csv(url)

head(titanic,n=3)

titanic$Pclass <- as.factor(titanic$Pclass)

library('tidyverse')

ggplot(data=titanic,mapping=aes(x=Survived,fill=Pclass))+geom_bar()


