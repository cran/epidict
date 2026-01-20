## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----eval = FALSE-------------------------------------------------------------
# # install.packages("remotes")
# remotes::install_github("R4EPI/epidict")

## ----gendata------------------------------------------------------------------
library("epidict")
gen_data("Measles", varnames = "data_element_shortname", numcases = 100, org = "MSF")
gen_data("Vaccination_long", varnames = "name", numcases = 100, org = "MSF")

## ----lookup, message = FALSE--------------------------------------------------
library("matchmaker")
library("dplyr")

dat <- gen_data(dictionary = "Cholera", 
  varnames = "data_element_shortname",
  numcases = 20,
  org = "MSF"
)
print(dat)

# We want the expanded dictionary, so we will select `compact = FALSE`
dict <- msf_dict(dictionary = "Cholera", 
  long    = TRUE,
  compact = FALSE,
  tibble  = TRUE
)
print(dict)

# Now we can use matchmaker to filter the data
dat_clean <- matchmaker::match_df(dat, dict, 
  from  = "option_code",
  to    = "option_name",
  by    = "data_element_shortname",
  order = "option_order_in_set"
)
print(dat_clean)

