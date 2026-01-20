## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  echo = FALSE
)

## ----ajs_intersectional, results="asis"---------------------------------------
library(epidict)
ajs <- msf_dict("AJS_intersectional")
names_desc <- ajs[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----ajs_intersectional_values, results = "asis"------------------------------
ajs_codes <- tidyr::unnest(ajs, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(ajs_codes)

## ----ajs, results="asis"------------------------------------------------------
library(epidict)
ajs <- msf_dict("AJS")
names_desc <- ajs[c("data_element_formname", "data_element_shortname", "data_element_description", "data_element_valuetype")]
DT::datatable(names_desc)

## ----ajs_values, results = "asis"---------------------------------------------
ajs_codes <- tidyr::unnest(ajs, cols = options)[c("data_element_shortname", "data_element_valuetype", "option_code", "option_name", "option_order_in_set")]
DT::datatable(ajs_codes)

## ----cholera_intersectional, results="asis"-----------------------------------
library(epidict)
cholera <- msf_dict("Cholera_intersectional")
names_desc <- cholera[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----cholera_intersectional_values, results = "asis"--------------------------
cholera_codes <- tidyr::unnest(cholera, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(cholera_codes)

## ----cholera, results="asis"--------------------------------------------------
library(epidict)
cholera <- msf_dict("Cholera")
names_desc <- cholera[c("data_element_formname", "data_element_shortname", "data_element_description", "data_element_valuetype")]
DT::datatable(names_desc)

## ----cholera_values, results = "asis"-----------------------------------------
cholera_codes <- tidyr::unnest(cholera, cols = options)[c("data_element_shortname", "data_element_valuetype", "option_code", "option_name", "option_order_in_set")]
DT::datatable(cholera_codes)

## ----measles_intersectional, results="asis"-----------------------------------
library(epidict)
measles <- msf_dict("Measles_intersectional")
names_desc <- measles[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----measles_intersectional_values, results = "asis"--------------------------
measles_codes <- tidyr::unnest(measles, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(measles_codes)

## ----measles, results="asis"--------------------------------------------------
library(epidict)
measles <- msf_dict("Measles")
names_desc <- measles[c("data_element_formname", "data_element_shortname", "data_element_description", "data_element_valuetype")]
DT::datatable(names_desc)

## ----measles_values, results = "asis"-----------------------------------------
measles_codes <- tidyr::unnest(measles, cols = options)[c("data_element_shortname", "data_element_valuetype", "option_code", "option_name", "option_order_in_set")]
DT::datatable(measles_codes)

## ----meningitis_intersectional, results="asis"--------------------------------
library(epidict)
meningitis <- msf_dict("Meningitis_intersectional")
names_desc <- meningitis[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----meningitis_intersectional_values, results = "asis"-----------------------
meningitis_codes <- tidyr::unnest(meningitis, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(meningitis_codes)

## ----meningitis, results="asis"-----------------------------------------------
library(epidict)
meningitis <- msf_dict("Meningitis")
names_desc <- meningitis[c("data_element_formname", "data_element_shortname", "data_element_description", "data_element_valuetype")]
DT::datatable(names_desc)

## ----meningitis_values, results = "asis"--------------------------------------
meningitis_codes <- tidyr::unnest(meningitis, cols = options)[c("data_element_shortname", "data_element_valuetype", "option_code", "option_name", "option_order_in_set")]
DT::datatable(meningitis_codes)

## ----diphtheria_intersectional, results="asis"--------------------------------
library(epidict)
diphtheria <- msf_dict("Diphtheria_intersectional")
names_desc <- diphtheria[c("name", "label_english", "value_type")]
DT::datatable(names_desc)

## ----diphtheria_intersectional_values, results = "asis"-----------------------
diphtheria_codes <- tidyr::unnest(diphtheria, cols = options)[c("name", "value_type", "option_name", "option_label_english", "option_order_in_set")]
DT::datatable(diphtheria_codes)

