library(dplyr)
library(plyr)
library(shiny)

df_loader <- function(input){
  
  list_df <- lapply(1:dim(input$datafile)[1], function(number){
  
    path <- input$datafile[[number, 'datapath']]
    
    df <- read.csv(path, header = TRUE, sep = ",", dec = ".", stringsAsFactors=FALSE)
    
    df <- df [, c("Div","Date","HomeTeam","AwayTeam","FTHG",
                  "FTAG","FTR","HTHG","HTAG","HTR")]
    
    df
  })
  df <- plyr::rbind.fill(list_df)
  df
}

process_data <- function(df){

  teams <- unique(df$HomeTeam)
  
  list_df <- lapply(teams, function(team){
    if(team != 'Reading' && team != ""){
      partidos_ganados <- dim(df %>%
                                filter((HomeTeam == team & FTR == 'H') | 
                                         (AwayTeam == team & FTR == 'A')))[1]
      
      partidos_perdidos <- dim(df %>%
                                 filter((HomeTeam == team & FTR == 'A') |
                                          (AwayTeam == team & df$FTR == 'H')))[1]
      
      partidos_empatados <- dim(df %>%
                                  filter((HomeTeam == team & FTR == 'D') |
                                           (AwayTeam == team & FTR == 'D')))[1]
      
      bal_tot_gol_loc <- sum(df %>%
                               filter(HomeTeam == team) %>%
                               select(FTHG)) -
        sum(df %>%
              filter(HomeTeam == team) %>%
              select(FTAG))
      
      bal_tot_gol_vis <- sum(df %>%
                               filter(HomeTeam == team) %>%
                               select(FTAG)) -
        sum(df %>%
              filter(HomeTeam == team) %>%
              select(FTHG))
      
      df = data.frame(Team=team, PG = partidos_ganados, 
                      PP = partidos_perdidos, PE = partidos_empatados,
                      BTGL = bal_tot_gol_loc, BTGV = bal_tot_gol_vis, 
                      stringsAsFactors=FALSE)
    }
  })
  df_processed <- plyr::rbind.fill(list_df)
  return(df_processed)
}

bar_plot_btgl <- function(df_processed){
  
  var_xbtgl = sort(df_processed$BTGL, decreasing = TRUE)
  xtick_btgl = df_processed[order(df_processed$BTGL, decreasing = TRUE), ]$Team
  
  barplot(var_xbtgl, ylab = 'Diferencia de Goles', width = 1)
  title('Balance de Goles como Local')
  axis(side = 1, at=1:length(xtick_btgl), labels = xtick_btgl)

}

bar_plot_btgv <- function(df_processed){
  
  var_xbtgv = sort(df_processed$BTGV, decreasing = TRUE)
  xtick_btgv = df_processed[order(df_processed$BTGV, decreasing = TRUE), ]$Team
  
  barplot(var_xbtgv, ylab = 'Diferencia de Goles', width = 1)
  title('Balance de Goles como Visitante')
  axis(side = 1, at=1:length(xtick_btgv), labels = xtick_btgv)
  
}
