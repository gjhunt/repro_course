d = read.csv('raw.csv')
d = d[complete.cases(d),]
write.csv(d,"proc.csv")