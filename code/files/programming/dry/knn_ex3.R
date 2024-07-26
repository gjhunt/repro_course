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

library('caret')

# +
N_samp = 100
x = sort(rnorm(N_samp))
eps = rnorm(N_samp,0,.05)
y = sin(x) + eps

df = data.frame(x=x,y=y)
# -

fit_knn = function(K){
    knn_mod = knnreg(y~x,data=df, k = K)    
    return(knn_mod)
}

K_seq = c(10,5,1)

knn_mods = lapply(K_seq,fit_knn)
