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

# +
N_samp = 100
x = sort(rnorm(N_samp))
eps = rnorm(N_samp,0,.05)
y = sin(x) + eps

df = data.frame(x=x,y=y)

# + jupyter={"outputs_hidden": true}
library('caret')
# -

knn_mod = knnreg(y~x,data=df, k = 10)

df$preds = predict(knn_mod)

# save preds for later use
write.csv(x=df,file="preds.csv")
