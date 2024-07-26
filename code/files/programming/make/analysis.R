library('palmerpenguins')
data = penguins[complete.cases(penguins),]
write.csv(x=data,file='penguins.csv')

