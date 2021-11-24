
# eNFIrawdata

Raw data for the eNFI package

## Overview

This package provides raw data for `eNFI` [eLearning National Forest Inventory](https://github.com/gaelso/eNFI).

It contains 5 tables:
- `raw-tree` contains tree on the ground measurements,
- `raw-plot` contains plot level information of the trees measured, 
- `raw-species` contains species names of the trees measured,
- `raw-wdsp` and `raw-wdgn` contains species and genus level wood density averages derived from Zanne, Amy E. et al. (2009)[^1].


The tables `raw-tree`, `raw-plot` and `raw-species` comes from real forest inventories in several countries across the tropics. Their data have been fully anonymized (plot, tree and species IDs as well as species and genus have been renamed, plot coordinates removed, tree positioning re-shuffled to 20m radius circular forest plots) and basic data cleaning has been performed to remove the most obvious measurement/data entry errors.

The data has also been simplified to the main variables needed for commercial volume, carbon stock and biodiversity indicators:

- tree diameter at breast height and point of measurement,
- tree top and bole heights,
- tree distance and azimuth to the plot centers,
- plot level information includes the FAO 2010 Global Ecological Zones and land cover at the plot location. 
- The environmental stress (E, coded `envir_stress` in this package) from [Chave et al. 2014](https://forestgeo.si.edu/sites/default/files/aboveground_biomass_protocol_accessible.pdf)[^2] supplementary materials has also been added to the plot information to enable using Chave's tree height-diameter and biomass-diameter models with the tree data in this package.

For further anonymization, to avoid re-finding the real species names from the wood density a random number between 0.01 to 0.05 has been added to species level wood densities.







[^1]: Zanne, Amy E. et al. (2009), Data from: Towards a worldwide wood economics spectrum, Dryad, Dataset, https://doi.org/10.5061/dryad.234
[^2]: Chave, J., Réjou-Méchain, M., Búrquez, A., Chidumayo, E., Colgan, M.S., Delitti, W.B., Duque, A., Eid, T., Fearnside, P.M., Goodman, R.C., Henry, M., Martínez-Yrízar, A., Mugasha, W.A., Muller-Landau, H.C., Mencuccini, M., Nelson, B.W., Ngomanda, A., Nogueira, E.M., Ortiz-Malavassi, E., Pélissier, R., Ploton, P., Ryan, C.M., Saldarriaga, J.G. and Vieilledent, G. (2014), Improved allometric models to estimate the aboveground biomass of tropical trees. Glob Change Biol, 20: 3177-3190. https://doi.org/10.1111/gcb.12629
  E raster file and instructions available at: https://chave.ups-tlse.fr/pantropical_allometry.htm#E