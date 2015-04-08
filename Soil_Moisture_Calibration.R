TDR_calibration =  function(VWC=NULL, period=NULL){
# -------------------------------------------------------------------------
# VWC_correction=TDR_calibration(VWC, period)
#
# Description:
# This function corrects the volumetric water content (%) given by the black  
# TDR probe mounted to the wooden stick. This correction factor was developed 
# by Katy Hoffmeister in 2014 using soil collected from the agricultural fields
# in the Ithaca, NY area.
#
# Written by Chelsea K Morris, 04/08/15
#
# Input:
# VWC: volumetric water content read out from TDR [%]
# period: period read out from TDR [us]
#
# Ouput:
# VWC_correction: the corrected volumetric water content for the black TDR [%]
#
# NOTE: This function can run for an array of inputs.
#
# Example 1: Single input, VWC
# VWC=0.435;
#
# VWC_correction=TDR_calibration(VWC=0.435)
# 
# VWC_correction =
#     15.82771
# 
# Example 2: Array input
# period=c(1.01,1.06);
# 
# VWC_correction=TDR_calibration(period=c(1.01,1.06))
#   or
# VWC_correction=TDR_calibration( , c(1.01,1.06))
# 
# VWC_correction =
#     40.027    46.412
#
# Equation
  if (missing(period)) {
    VWC_correction= 0.6614*VWC + 15.54
  } else {
    VWC_correction= 127.7* period - 88.95
  }
  return (VWC_correction)
}
