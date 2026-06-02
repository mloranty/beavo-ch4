##########################################
#
# calibration for AQUA flux chamebers
#
# MML 05/18/26
###########################################

library("lubridate")
rm(list = ls())

# read licor data
lic <- read.csv("calibration_data/licor_20260421.csv", header = T)

# read aquaflux data
aqf <- na.exclude(read.csv("calibration_data/aquaflux_20260421.CSV", header = T))

aqf$K30_CO2 <- as.numeric(aqf$K30_CO2)
aqf$CH4smV <- as.numeric(aqf$CH4smV)

aqf$ts <- ymd_hms(aqf$datetime)

strptime(lic$time,format = "Y%-m%-d% H%:M%:S%")
lic$ts <- ymd_hms(lic$time)

plot(lic$ts, lic$CH4, ylim = c(0,20000))
points(aqf$ts+210, aqf$CH4smV*5, col = "red", add = T)
