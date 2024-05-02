library(ggplot2)
# install.packages("ggplot2")

daten <- read.table("/Users/ra67tek/HPC-SS24/hpc/resultsgenome.txt", sep=";")


head(daten)
#daten$threads_nseq <- interaction(daten$V2, daten$V3)

#ggplot(daten, aes(x=V2, y=V3,col=V4))+
  scale_y_log10()+
  scale_x_log10()+
  geom_smooth(se=F)+
  theme_bw()

ggplot(daten, aes(x=V2, y=V3, group= V4, col=V4))+ geom_point()+
  scale_y_log10()+
  scale_x_log10()+
  theme_bw()
