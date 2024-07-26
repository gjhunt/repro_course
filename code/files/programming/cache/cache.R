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

read_or_run = function(cache_file,func,...){
    if(!file.exists(cache_file)){
        cat("Running func...");flush.console()
        obj = func(...)
        saveRDS(object=obj,file=cache_file)
    } else {
        cat("Reading from cache...");flush.console()
        obj = readRDS(file=cache_file)
    }
    return(obj)
}

# # raw data processing

library('palmerpenguins')

proc_raw_data = function(raw_data){
    intermed_data = raw_data[complete.cases(raw_data),]
    Sys.sleep(5)
    return(intermed_data)
}

dir.create('cache/',showWarnings=FALSE)

intermed = read_or_run(cache_file='cache/intermed.rds',
                        func=proc_raw_data,penguins)

# # intermed data processing

proc_intermed_data = function(intermed){
    # convert mm to in
    mm_cols = grep("_mm",colnames(intermed),value=TRUE)
    mm_to_inch = 0.0393701
    intermed[,mm_cols] = intermed[,mm_cols] * mm_to_inch
    colnames(intermed) = sapply(colnames(intermed),function(s)gsub("_mm","_in",s))
    Sys.sleep(5)
    return(intermed)
}

final_data = read_or_run(cache_file='cache/final.rds',
                        func=proc_intermed_data,intermed)

# # make plots 

library('ggplot2')

p = ggplot(data=final_data,mapping=aes(x=bill_length_in,fill=species))+
    geom_histogram()

p

ggsave(plot=p,file='final_plot.pdf')
