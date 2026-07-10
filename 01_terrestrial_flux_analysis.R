##########################################
#
# terrestrial flux analysis for BEAVo data
#
# MML 07/08/26
###########################################

library("lubridate")
library("tidyverse")
rm(list = ls())

# read processed flux data from Katey Walter Anthony
# the original file was not easily machine readable, so I cleaned it up a bit
flux <- read.csv("data/2026_06_04_LGR_CH4Fluxes_Katey_ML_clean.csv", 
                 skip = 2, header = F)

colnames(flux) <- read.csv('data/2026_06_04_LGR_CH4Fluxes_Katey_ML_clean.csv',
                           header = F, nrows = 1)

# read ancillary plot data - includes soi temp, moisture, etc
pltdat <- read.csv("data/CH4_plot_data.csv", 
                   header = T)

# read land cover classifications
# this is a bit messy too as includes info from Mike and Eli (student work)
lcdat <- read.csv("data/CH4_land_cover.csv")

head(pltdat)
