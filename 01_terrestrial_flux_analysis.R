##########################################
#
# terrestrial flux analysis for BEAVo data
#
# MML 07/08/26
###########################################

library("lubridate")
rm(list = ls())

flux <- read.csv("data/2026_06_04_LGR_CH4Fluxes_Katey_ML_clean.csv", 
                 skip = 2, header = F)

colnames(flux) <- read.csv('data/2026_06_04_LGR_CH4Fluxes_Katey_ML_clean.csv',
                           header = F, nrows = 1)

pltdat <- read.csv("data/CH4_plot_data.csv", 
                   header = T)

lcdat <- read.csv("data/CH4_land_cover.csv")
