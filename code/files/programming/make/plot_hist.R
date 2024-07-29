d = read.csv('proc.csv')
library('ggplot2')
p = ggplot(data=d,mapping=aes(x=flipper_length_mm,fill=species))+geom_histogram()
ggsave(p,file="hist.pdf")