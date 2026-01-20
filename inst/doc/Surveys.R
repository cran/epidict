## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = FALSE
)

## ----mortality, results="asis"------------------------------------------------
library(epidict)
mortality <- msf_dict("Mortality", compact = TRUE)
names_desc <- mortality[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----mortality_values, results = "asis"---------------------------------------
mortality_codes <- tidyr::unnest(mortality, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(mortality_codes)

## ----nutrition, results="asis"------------------------------------------------
library(epidict)
nutrition <- msf_dict("Nutrition", compact = TRUE)
names_desc <- nutrition[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----nutrition_values, results = "asis"---------------------------------------
nutrition_codes <- tidyr::unnest(nutrition, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(nutrition_codes)

## ----vaccination_long, results="asis"-----------------------------------------
library(epidict)
vaccination_long <- msf_dict("Vaccination_long", compact = TRUE)
names_desc_long <- vaccination_long[c("name", "label_english", "value_type")]
DT::datatable(names_desc_long)

## ----vaccination_short, results="asis"----------------------------------------
library(epidict)
vaccination_short <- msf_dict("Vaccination_short", compact = TRUE)
names_desc_short <- vaccination_short[c("name", "label_english", "value_type")]
DT::datatable(names_desc_short)

## ----vaccination_long_values, results = "asis"--------------------------------
vaccination_codes_long <- tidyr::unnest(vaccination_long, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(vaccination_codes_long)

## ----vaccination_short_values, results = "asis"-------------------------------
vaccination_codes_short <- tidyr::unnest(vaccination_short, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(vaccination_codes_short)

