################################################################################

# get the retrosheet data:
library(rvest)
library(stringr)
library(data.table)
library(dplyr)

year <- read_html("https://www.retrosheet.org/boxesetc/1982/Igwynt0010011982.htm")
year <- read_html("https://www.retrosheet.org/boxesetc/1992/Igwynt0010111992.htm")

x <- year %>% html_nodes("pre")
a <- html_text(x[[5]])
a <- str_split(a, "\n")[[1]]
a <- a[a != ""]
a <- a[!grepl("Date", a)]



data <- fread("~/Git/GwynnBot/data/GL1982.txt", data.table = FALSE)

data <- 
