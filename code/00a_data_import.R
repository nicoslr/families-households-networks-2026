## 00 - Data preparation for CBS import: Processing the Dutch Social Networks and Fertility LISS Study 

## Project: Families, households, networks: Rethinking the relational structure of families through large-scale network data
## Authors: Nicolás Soler (ORCID 0009-0001-4239-9396), Tom Emery, Agnieszka Kanas
## Last updated: January 2026
## Full research article published in journal: Demography (2026)

setwd("PATH_IN_YOUR_LOCAL_MACHINE")
library(tidyverse)
library(FertNet)

# Use FertNet package to prepare the LISS data
data <- read_data() |> translate() |> change_column_types() |>
  fix_errors() |> create_relation_labels() |> remove_timing_vars()

background <- get_background_vars()

full_data <- left_join(data, background, by="nomem_encr")

write.csv(full_data, "9314_data_kinderwens.csv")

# For details on the data and FertNet, see:
# Stulp, G. (2023). Describing the Dutch Social Networks and Fertility Study
# and how to process it. Demographic Research, 49, 493–512.
