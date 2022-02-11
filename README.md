# MallorcaHolocene
Code for analyzing Holocene POS data to predict RSL and rates of RSL change for the past 4000 years. Create results files and figures for the analysis from Onac et al., (2022).

Onac et al., 2022: "Exceptionally stable pre-industrial sea level inferred from the western Mediterranean Sea"
Change Point Analysis of POS Data

### Onac [in review]

This repository contains a Jupyter notebook with supporting R code that is used in Bayesian statistical analysis of POS records of Holocene sea level.
 
The manuscript is in review with Science Advances.

**Project abstract:**

An accurate record of pre-industrial (pre-1900 CE) sea level is necessary to contextualize modern global mean sea-level (GMSL) rise relative to natural variability.  We present results from precisely dated phreatic overgrowths on speleothems that preserve a detailed history of Late Holocene sea level in Mallorca.  Statistical analysis indicates that sea level remained within 0.08 m (95% confidence) of pre-industrial levels from 2.84 ka BP to 1900 CE and a jump of 0.12–0.31 m (95% confidence) occurred from 3.26 to 2.84 ka BP (2σ). This sea-level history is consistent with glacial isostatic adjustment models that adopt weak upper mantle viscosity of ~1020 Pa s.  There is virtual certainty (>0.999 probability) that the average GMSL rise since 1900 CE exceeded even the rates across the jump (0.30–0.91 mm yr-1, 95% confidence). We conclude that modern GMSL rise is anomalous relative to natural variability in ice volumes over the past 4000 years.  

If you have any questions, comments, or feedback on this code, please [contact Erica](mailto:ericaashe@gmail.com).

### Dependencies
All dependencies can be found in /model and /R, and all data files in /data.
Other dependencies include the R packages:
* tidyverse
* rjags
* R2jags
* devtools

## File Descriptions

There is one main file, a Jupyter notebook:

* Mallorca_CP_model.ipynb
 
After running code in the notebook, results and output (figures and csv files) can be found in a subfolder (output*) within the folder where you are running the code.

## Authors

### Contributors
* **Erica L. Ashe, PhD** - [GitHub](https://github.com/ericaashe)
* **Niamh Cahill, PhD** - contributed basecode

### Co-authors

* **Bogdan P. Onac**
* **Jerry X. Mitrovica**
* **Joaquín Ginés** 
* **Yemane Asmerom** 
* **Victor J. Polyak** 
* **Paola Tuccimei** 
* **Joan J. Fornós** 
* **Mark J. Hoggard** 
* **Sophie Coulson** 
* **Angel Ginés** 
* **Michele Soligo** 
* **Igor M. Villa** 

> Copyright (C) 2022 by Erica L. Ashe
> This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.
> This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.
> A copy of the GNU General Public License comes with this program.  If not, see <http://www.gnu.org/licenses/>.

## Acknowledgments

ELA is supported by NSF grant OCE-2002437.

This work is a contribution to IGCP Project 639, INQUA Project CMP1601P “HOLSEA” and PALSEA3.
