library(slidify)
library(slidifyLibraries)
# setwd("~/Dropbox/Onkobioloogia/")
# author("p53-ja-apoptoos")

setwd("~/Dropbox/Onkobioloogia/p53-ja-apoptoos")
slidify("index.Rmd")
browseURL("index.html")
# publish("p53-ja-apoptoos","tpall")
