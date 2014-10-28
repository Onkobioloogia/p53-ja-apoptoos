library(plyr);library(dplyr)
library(magrittr)
library(ggplot2)
library(scales)
library(ggthemes)
prev <- read.delim("~/Dropbox/Onkobioloogia/p53-ja-apoptoos/PrevalenceIARC TP53 Database, R17.txt")
prev %>% group_by(Topography) %>%  summarise(samples=sum(Sample_analyzed), 
                                             mutated=sum(Sample_mutated), 
                                             percent=(mutated/samples)*100) %>%
  filter(samples>500) %>%
  qplot(x=reorder(Topography,percent), y=percent, data=., geom='bar',stat="identity") + 
  coord_flip() + labs(y="% mutated",x=NULL)

summary(soma)
soma <- read.delim("~/Dropbox/Onkobioloogia/p53-ja-apoptoos/somaticMutationsIARC TP53 Database, R17.txt")
soma %>% ddply(.,"Effect", summarise, count=length(Effect)) %>% na.exclude %>% 
  filter(count>1000) %>% mutate(percent=count*100/sum(count)) %>%
  ggplot(., aes(x=factor(1), fill=Effect)) + 
  geom_bar(aes(y = percent),stat="identity") + 
  scale_fill_colorblind(labels=c("frameshift", "missense", "nonsense", "silent"),
                        name="Mutatsioon") + 
  coord_polar(theta="y") + xlab('') + ylab('') + 
  ggtitle("p53-s on enamasti aminohappe asendused -- \n missens mutatsioonid")


apc <- data.frame(Effect = c("nonsense","missense","silent","frameshift"),
                  count =c(1239,527,187,1781))
apc %>% mutate(percent=count*100/sum(count)) %>%
  ggplot(., aes(x=factor(1), fill=Effect)) + 
  geom_bar(aes(y = percent),stat="identity") + 
  scale_fill_colorblind(labels=c("frameshift", "missense", "nonsense", "silent"),
                        name="Mutatsioon") + 
  coord_polar(theta="y") + xlab('') + ylab('') +
  ggtitle("APC mutatsioonid")

muts <- read.csv("~/Dropbox/Onkobioloogia/p53-ja-apoptoos/muts.csv",stringsAsFactors=FALSE)
muts$Effect[grep("inframe", muts$Effect)] <- "Ins/del inframe"
muts$Effect[grep("frameshift", muts$Effect)] <- "Ins/del frameshift"
muts %>% filter(!Effect=="Other") %>%
  ddply(.,c("Effect","gene"), summarise, count=sum(count)) %>%
  ddply(.,"gene", mutate, percent=count*100/sum(count)) %>%
  ggplot(., aes(x=factor(1), fill=Effect)) + 
  geom_bar(aes(y = percent),stat="identity") + facet_wrap(~gene) +
  scale_fill_colorblind(labels=c("complex","frameshift","inframe",
                                 "missense", "nonsense", "silent")) + 
  coord_polar(theta="y") + xlab('') + ylab('')