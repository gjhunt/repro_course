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

# # Setting the seed

x = runif(10)
mean(x^2)

x = runif(10)
mean(x^2)

set.seed(887561)
x = runif(10)
mean(x^2)

set.seed(887561)
x = runif(10)
mean(x^2)

# ## Under the hood in `R`

head(.Random.seed)

get_rseed = function(){
    if(!exists(".Random.seed")) 
        set.seed(NULL)
    return(.Random.seed)
}

head(get_rseed())

# ## Saving seeds without an explicit set

read_or_run = function(filen,func){
    if(!file.exists(filen)){
        cat('Running func...');flush.console()
        obj = func()
        saveRDS(object=obj,file=filen)
    } else {
        cat('Reading from cache...');flush.console()
        obj = readRDS(file=filen)
    }
    return(obj)
}

# +
.Random.seed = read_or_run("random_seed", get_rseed)

x = runif(10)
mean(x^2)

# +
.Random.seed = read_or_run("random_seed", get_rseed)

x = runif(10)
mean(x^2)

# +
#system('rm random_seed')

# +
rseed = read_or_run("random_seed", get_rseed)
.Random.seed = rseed

x = runif(10)
mean(x^2)
# -

# # Functions

mc_est = function(){
    set.seed(887561)
    x = runif(10)
    mean(x^2)   
}

N_rep = 5
var(replicate(N_rep,mc_est()))

replicate(N_rep,mc_est())

# a correct way

# +
set.seed(887561)

mc_est = function(){
    x = runif(10)
    mean(x^2)   
}

N_rep = 5
var(replicate(N_rep,mc_est()))
# -

# # Beware: parallel

library(parallel)
cl <- makeCluster(5)

mc_est = function(i){
    x = runif(10)
    mean(x^2)   
}

set.seed(887561)
out = clusterApply(cl, 1:5, mc_est)
out

set.seed(887561)
clusterApply(cl, 1:5, mc_est)

# a kludgy solution

set.seed(887561)
seeds = sample.int(100000000,5)
seeds

# +
mc_est = function(i){
    set.seed(seeds[i])
    x = runif(10)
    mean(x^2)   
}

cl <- makeCluster(5)
clusterExport(cl=cl, varlist="seeds", envir=environment())

clusterApply(cl, 1:5, mc_est)
# -

clusterApply(cl, 1:5, mc_est)

# a better parallel RNG

# +
cl <- makeCluster(5)
clusterSetRNGStream(cl, iseed = 887561)
mc_est = function(i){
    x = runif(10)
    mean(x^2)   
}

clusterApply(cl, 1:5, mc_est)
# -

clusterSetRNGStream(cl, iseed = 887561)
clusterApply(cl, 1:5, mc_est)

# +
cl <- makeCluster(2)
clusterSetRNGStream(cl, iseed = 887561)
mc_est = function(i){
    x = runif(10)
    mean(x^2)   
}

clusterApply(cl, 1:5, mc_est)
# -

# a very reproducible approach

mc_est = function(i){
    x = runif(10)
    mean(x^2)   
}

library('future.apply')
plan(multisession,workers=5)
future_lapply(1:5,FUN=mc_est,future.seed=887561)

library('future.apply')
plan(multisession,workers=2)
future_lapply(1:5,FUN=mc_est,future.seed=887561)
