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

# test case 1

x = sort(runif(150,-12,12))
y = sin(x)+sin(x/2)+rnorm(150,0,.25)
library('locpol')
preds = locPolSmootherC(x,y,x,.5,0,gaussK)$beta0
plot(x,y)
lines(x,preds,col='red',lwd=2)
write.csv(preds,'preds1.csv')

# test case 2

x = sort(runif(150,-12,12))
y = sin(x)+sin(x/2)+rnorm(150,0,.25)
library('locpol')
preds = locPolSmootherC(x,y,x,.05,0,gaussK)$beta0
plot(x,y)
lines(x,preds,col='red',lwd=2)
write.csv(preds,'preds2.csv')

# test case 3

x = sort(runif(500,-12,12))
y = sin(x)+sin(x/2)+rnorm(500,0,.25)
library('locpol')
preds = locPolSmootherC(x,y,x,.5,0,gaussK)$beta0
plot(x,y)
lines(x,preds,col='red',lwd=2)
write.csv(preds,'preds3.csv')

# test case 4

x = sort(runif(500,-12,12))
y = sin(x)+sin(x/2)+rnorm(500,0,.25)
library('locpol')
preds = locPolSmootherC(x,y,x,.5,0,CosK)$beta0
plot(x,y)
lines(x,preds,col='red',lwd=2)
write.csv(preds,'preds3.csv')
