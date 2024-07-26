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

library('locpol')

run_sim=function(){
    x = sort(runif(200,-4*pi,4*pi)) # simulated data
    eps = rnorm(200,0,.25)
    y = sin(x)+eps

    smoothed = locPolSmootherC(x=x,y=y,xeval=x,deg=0,
                               kernel=gaussK,bw=.5)
    preds = smoothed$beta0
    return(preds)
}

# + jupyter={"outputs_hidden": true}
run_sim()
# -

run_sim=function(N=200,sig=.25,bandw=.5,kern=gaussK){
    x = sort(runif(N,-4*pi,4*pi)) # simulated data
    eps = rnorm(N,0,sig)
    y = sin(x)+eps

    smoothed = locPolSmootherC(x=x,y=y,xeval=x,deg=0,
                               kernel=kern,bw=bandw)
    preds = smoothed$beta0
    return(preds)
}

# + jupyter={"outputs_hidden": true}
run_sim()

# + jupyter={"outputs_hidden": true}
run_sim(bandw=1,sig=2)
