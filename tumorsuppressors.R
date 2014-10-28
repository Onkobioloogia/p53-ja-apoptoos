library(XML)
library(magrittr)
tsg <- "http://bioinfo.mc.vanderbilt.edu/TSGene/coding_tsg.cgi" %>% 
  readHTMLTable %>% .[[4]]
classes <- read.table("CosmicMutantExport.tsv", 
                      sep="\t", header = TRUE, nrows = 5000) %>% sapply(., class)
cosmic <- read.table("CosmicMutantExport.tsv", 
                     sep="\t", header = TRUE, colClasses = classes)
head(cosmic)
cos.tsg <- cosmic[cosmic$Gene.name%in%intersect(cosmic$Gene.name,tsg$"Gene Name"),]
library(plyr);library(dplyr)
library(ggplot2)
library(ggthemes)
library(RColorBrewer)
# keep unique mutations
cos.tsg %>% select(Gene.name,Mutation.Description,Mutation.ID) %>% 
  function(x) x[!duplicated(x),] %>% dim

# Kasuta vaigistatud ridu kui soov välistada rekurentsed mutatsioonid
muts.tsg <- cos.tsg %>% 
  # select(Gene.name,Mutation.Description,Mutation.ID) %>% 
  #   function(x) x[!duplicated(x),] %>%
  ddply(.,c("Gene.name","Mutation.Description"), summarise, 
        counts=length(Mutation.Description)) %>% droplevels
top5 <- ddply(muts.tsg,"Gene.name", summarise,total=sum(counts)) %>% function(x) quantile(x$total, probs=.95)
lots <- ddply(muts.tsg,"Gene.name", summarise,total=sum(counts)) %>% filter(total>top5)

grand <- cos.tsg %>% 
#   select(Gene.name,Mutation.Description,Mutation.ID) %>% 
#   function(x) x[!duplicated(x),] %>%
  filter(!Mutation.Description=="Unknown") %>% 
  ddply(.,c("Mutation.Description"), summarise, 
                  counts=length(Mutation.Description)) %>% droplevels

colourCount = length(unique(grand$Mutation.Description))
getPalette = colorRampPalette(brewer.pal(12, "Paired"))
grand %>%
  mutate(percent=counts*100/sum(counts)) %>%
  ggplot(., aes(x=factor(1), fill=Mutation.Description)) + 
  geom_bar(aes(y = percent), stat="identity") + 
  scale_fill_manual(values = getPalette(colourCount)) +
  coord_polar(theta="y", start = (1/2)*pi) + xlab('') + ylab('')


colourCount = length(unique(muts.tsg$Mutation.Description))
getPalette = colorRampPalette(brewer.pal(12, "Paired"))
muts.tsg %>% filter(Gene.name%in%lots$Gene.name) %>%
  filter(!Mutation.Description=="Unknown") %>%
  ddply(.,"Gene.name",mutate,percent=counts*100/sum(counts)) %>%
  ggplot(., aes(x=factor(1), fill=Mutation.Description)) + 
  geom_bar(aes(y = percent), stat="identity") + facet_wrap(~Gene.name) +
  scale_fill_manual(values = getPalette(colourCount), name="Mutation type") +
  coord_polar(theta="y", start = (1/2)*pi) + xlab('') + ylab('') +
  ggtitle("TSG mutation spectrum") +
  theme(strip.text.x = element_text(size = 10),
        plot.title = element_text(size = 16))
ggsave("assets/fig/tsg-mutation-spectrum.png",dpi=150, width=8)

tp53 <- cos.tsg %>% filter(Gene.name=="TP53"&!Mutation.Description=="Unknown")
