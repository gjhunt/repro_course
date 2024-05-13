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

proc_data = function(){
    x = rnorm(100)
    Sys.sleep(10) #simulate some complicated process
    return(x)
}

read_or_run = function(cache_file,func){
    if(!file.exists(cache_file)){
        cat("Running func...");flush.console()
        obj = func()
        saveRDS(object=obj,file=cache_file)
    } else {
        cat("Reading from cache...");flush.console()
        obj = readRDS(file=cache_file)
    }
    return(obj)
}

proc_df = read_or_run('proc_cache.rds',proc_data)

proc_df = read_or_run('proc_cache.rds',proc_data)
