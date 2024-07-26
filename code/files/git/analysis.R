print('hello world')

pdf('plot.pdf')
plot(1:10,1:10)
dev.off()

sessionInfo()
x<-mean(rnorm(1000))


y<-mean(rexp(1000))

