library(rvest)

master <- read.csv("~/Desktop/Analyzing Baseball Data with R/master.csv")

bryce_harper = subset(master, mlb_name == "Bryce Harper")

bryce_harper_fangraphs = read_html(paste0("https://www.fangraphs.com/statss.aspx?playerid=", bryce_harper$fg_id))

dashboard = bryce_harper_fangraphs %>%
  html_nodes(xpath = '//*[@id="SeasonStats1_dgSeason11_ctl00"]') %>%
  html_table()

 
write.csv(dashboard)
