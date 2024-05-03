library(ggplot2)
# install.packages("ggplot2")

#daten <- read.table("/Users/ra67tek/HPC-SS24/hpc/resultsgenome.txt", sep=";")
#daten <- read.table("/Volumes/KELLER-COURSES/bacgenestat/complete.csv", sep=";")
daten <- read.table("/Volumes/KELLER-COURSES/bacgenestat/part_taxonomy.csv", sep=";")

head(daten)
#daten$threads_nseq <- interaction(daten$V2, daten$V3)

#ggplot(daten, aes(x=V2, y=V3,col=V4))+
  #scale_y_log10()+
  #scale_x_log10()+
  #geom_smooth(se=F)+
  #theme_bw()

ggplot(daten, aes(x=V2, y=V4, group= V5, col=V5))+ geom_point()+
  scale_y_log10()+
  scale_x_log10()+
  #scale_color_gradient(low= "green", high= "red")+
  xlab("Genome size")+
  ylab("GC Content")+
  labs(color="Taxonomy")+
  theme_bw()
