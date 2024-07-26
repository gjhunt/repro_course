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

# We are going to generate some simulated data with the following model:
# First, we sample $N=200$ samples 
# $$ X_i \overset{iid}{\sim} U(-4\pi,4\pi)$$
# and then we calculate
# $$ Y_i = \sin(X_i) + \varepsilon_i$$
# where $\varepsilon_i\overset{iid}{\sim}N(0,\sigma^2)$. Here $\sigma = .25$. 

N = 200
sig = .25

x = sort(runif(N,-4*pi,4*pi))
eps = rnorm(N,0,sig)
y = sin(x)+eps

# Now we're going to fit using a kernel regression from the `locpol` package

library('locpol')

# a particularly important tuning parameter is the kernel bandwidth `bandw`, in our analysis we set it to $0.5$

bandw = 0.5

smoothed = locPolSmootherC(x=x,y=y,xeval=x,
                                   deg=0,kernel=gaussK,
                                   bw=bandw)
preds = smoothed$beta0

plot(x,y)
lines(x,preds,col='red',lwd=2)
