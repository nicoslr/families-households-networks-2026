## Families, Households, Networks - Soler et al. 2026

This repository contains the instructions and code to reproduce the results for the paper *Families, households, networks: Rethinking the relational structure of families through large-scale network data* by Nicolás Soler, Tom Emery, and Agnieszka Kanas (published in *Demography*, 2026).

To reproduce the analysis, you need access to the [Remote Access environment](https://www.cbs.nl/en-gb/our-services/customised-services-microdata/microdata-conducting-your-own-research) of Statistics Netherlands, as well as access to the [data archive](https://www.dataarchive.lissdata.nl/) of the *Longitudinal Internet Studies for the Social Sciences* (LISS) survey.

## 1 - Repository Structure

- `code/`
  - `00a_data_import.R`: R code to prepare the LISS survey data to be imported to the Remote Access environment of Statistics Netherlands before running the rest of the code. 
  - *Jupyter notebooks*: Code to reproduce the rest of the analysis in the Remote Access environment. Run sequentially.
    - Notebooks 01a-01d: pre-processing of microdata and survey files.
    - Notebooks 02a-02e: calculation of relevant variables.
    - Notebooks 03a-03h: preparation of results and output.
  - `config.yml`: Configuration file with paths in the Remote Access environment. Paths assume that scripts are run from a code sub-folder. If you wish to use other file paths, only this file needs to be modified. This file also specifies the microdata files needed to reproduce the analysis.
- `requirements/`
  - `requirements_python.txt`: Plain text file specifying the required Python libraries to replicate our computational environment in the Research Acess environment of Statistics Netherlands. Requires Python 3.11 or higher.
  - `requirements_r.txt`: Plain text file specifying the required R libraries to replicate our computational environment in your local machine.
  - `version_R`: Plain text file specifying the required R version to replicate our computational environment in your local machine.
- `README.md`: This file.

## 2 - Instructions

The analysis was conducted in the Research Access environment of Statistics Netherlands. To reproduce the analysis you need an active project in the environment that contains the microdata files specified in `code/config.yml`, Python 3.11 or higher, and the Python libraries specified in `cbs_python_environment.txt`. Once this infrastructure is in place, follow these steps:

1. Download the *Dutch Social Networks and Fertility Study* from the *Longitudinal Internet Studies for the Social Sciences* (LISS) data archive to your local machine.
2. Pre-process the LISS data using the script `code/00a_data_import.R` in your local machine.
3. Ask Statistics Netherlands to import an encrypted version of the pre-processed LISS data into your project folder in the Remote Access environment.
4. Ask Statistics Netherlands to activate a "heavy desktop" for your user to ensure enough RAM to run the code.
5. Run all other scripts in `code/` in the Remote Access environment.

## 3 - How to cite

**Published article**
```
Coming soon.
```

**Pre-print**
```
@article{soleretal_2024_fhn,
	title = {Families, households, networks: Rethinking the relational structure of families through large-scale network data},
	doi = {10.31235/osf.io/wxqyt},
	publisher = {SocArXiV},
	author = {Soler, Nicolás and Emery, Tom and Kanas, Agnieszka},
	year = {2024},
}
```

