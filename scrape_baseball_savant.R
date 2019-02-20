library(rvest)

install.packages("RMySQL")

# CSV file with ID of each MLB player
master <- read.csv("~/Desktop/Analyzing Baseball Data with R/master.csv")
master_batters = subset(master, mlb_pos != "P")
master_pitchers = subset(master, mlb_pos == "P")
master_batting_lite = master_batters[0:3,]
master_pitching_lite = master_pitchers[0:3,]

# MLB Batter For Loop
for(id in master_batters$mlb_id){
  player = read_html(paste0("https://baseballsavant.mlb.com/savant-player/", id))
  
  general_stats_batting = player %>%
    html_nodes(xpath = '//*[@id="top-stats"]/div[2]/table') %>%
    html_table()
  
  standard_batting_stats <- player %>% 
    html_nodes(xpath='//*[@id="hittingStandard"]/table[1]') %>%
    html_table()
  
  advanced_stats_batting = player %>%
    html_nodes(xpath = '//*[@id="hittingStandard"]/table[2]') %>%
    html_table()
  
  statcast_batting_stats = player %>%
    html_nodes(xpath = '//*[@id="statcast_batter"]/table') %>%
    html_table()
  
  monthly_splits_batting = player %>%
    html_nodes(xpath = '//*[@id="date-splits-mlb"]/table') %>%
    html_table()
  
  batting_order_splits = player %>%
    html_nodes(xpath = '//*[@id="order-splits-mlb"]/table') %>%
    html_table()
  
  base_runner_splits_batting = player %>%
    html_nodes(xpath = '//*[@id="runners-splits-mlb"]/table') %>%
    html_table()
  
  game_type_splits_batting = player %>%
    html_nodes(xpath = '//*[@id="type-splits-mlb"]/table') %>%
    html_table()
  
  outs_splits_batting = player %>%
    html_nodes(xpath = '//*[@id="outs-splits-mlb"]/table') %>%
    html_table()
  
  inning_splits_batting = player %>%
    html_nodes(xpath = '//*[@id="inning-splits-mlb"]/table') %>%
    html_table()
  
  statcast_batting_stats = player %>%
    html_nodes(xpath = '//*[@id="statcast_glance_batter"]/table') %>%
    html_table()
  
  pitch_tracking_batting = player %>%
    html_nodes(xpath = '//*[@id="detailedPitches"]') %>%
    html_table()
  
  plate_discipline_batting = player %>%
    html_nodes(xpath = '//*[@id="playeDiscipline"]') %>%
    html_table()
  
  batted_ball_profile_batting = player %>%
    html_nodes(xpath = '//*[@id="playeDiscipline"]') %>%
    html_table()
  
  statcast_shift_statistics_batting = player %>%
    html_nodes(xpath = '//*[@id="statcastHitting"]/div[10]/table') %>%
    html_table()
  
  standard_MLB_Fielding_Statistics = player %>%
    html_nodes(xpath = '//*[@id="fieldingStandard"]/table') %>%
    html_table()
  
  statcast_outs_above_average = player %>%
    html_nodes(xpath = '//*[@id="playerOAA"]') %>%
    html_table()
  
  statcast_running_statistics = player %>%
    html_nodes(xpath = '//*[@id="statcastRunning"]/div[2]/div/table') %>%
    html_table()
  
  game_log_batting =  player %>%
    html_nodes(xpath = '//*[@id="gamelogs-mlb"]/table') %>%
    html_table()
  
  general_stats_batting
  standard_batting_stats
  advanced_stats_batting
  statcast_batting_stats
  monthly_splits_batting
  batting_order_splits
  base_runner_splits_batting
  game_type_splits_batting
  outs_splits_batting
  inning_splits_batting
  statcast_batting_stats
  pitch_tracking_batting
  plate_discipline_batting
  batted_ball_profile_batting
  statcast_shift_statistics_batting
  standard_MLB_Fielding_Statistics
  statcast_outs_above_average
  statcast_running_statistics
  game_log_batting
  
  Sys.sleep(5)
  
}

# MLB Pitcher For Loop
for(id in master_pitchers$mlb_id){
player = read_html(paste0("https://baseballsavant.mlb.com/savant-player/", 572971))

general_stats_pitching = player %>%
  html_nodes(xpath = '//*[@id="top-stats"]/div[2]/table') %>%
  html_table()

standard_pitching_stats =  player %>%
  html_nodes(xpath = '//*[@id="pitchingStandard"]/table') %>%
  html_table()

statcast_pitching_stats = player %>%
  html_nodes(xpath = '//*[@id="statcast_pitching"]/table') %>%
  html_table()

monthly_pitching_splits = player %>%
  html_nodes(xpath = '//*[@id="date-splits-mlb"]/table') %>%
  html_table()

base_runner_pitching_splits = player %>%
  html_nodes(xpath = '//*[@id="runners-splits-mlb"]/table') %>%
  html_table()

game_type_pitching_splits = player %>%
  html_nodes(xpath = '//*[@id="type-splits-mlb"]/table') %>%
  html_table()

outs_pitching_splits = player %>%
  html_nodes(xpath = '//*[@id="outs-splits-mlb"]/table') %>%
  html_table()

inning_pitching_splits = player %>%
  html_nodes(xpath = '//*[@id="inning-splits-mlb"]/table') %>%
  html_table()

game_log_pitching = player %>%
  html_nodes(xpath = '//*[@id="gamelogs-mlb"]/table') %>%
  html_table()

pitch_tracking_pitching = player %>%
  html_nodes(xpath = '//*[@id="detailedPitches"]') %>%
  html_table()

plate_discipline_pitching = player %>%
  html_nodes(xpath = '//*[@id="playeDiscipline"]') %>%
  html_table()

batted_ball_profile_pitching = player %>%
  html_nodes(xpath = '//*[@id="playeDiscipline"]') %>%
  html_table()

statcast_shift_statistics_pitching = player %>%
  html_nodes(xpath = '//*[@id="statcastPitching"]/div[17]/table') %>%
  html_table()

general_stats_pitching
standard_pitching_stats
statcast_pitching_stats
monthly_pitching_splits
base_runner_pitching_splits
game_type_pitching_splits
outs_pitching_splits
inning_pitching_splits
game_log_pitching
pitch_tracking_pitching
plate_discipline_pitching
batted_ball_profile_pitching
statcast_shift_statistics_pitching

Sys.sleep(5)
}

# MiLB Prospect For Loop?


