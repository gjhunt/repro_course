d = read.csv('proc.csv')
library('ggplot2')
p = ggplot(data=d,mapping=aes(x=flipper_length_mm,y=bill_length_mm,color=species))+geom_point()
ggsave(p,file="plot.pdf")