## create-louland

source("data-raw/create-louland-NLMR.R", local=T)
source("data-raw/create-louland-3D.R", local=T)
#source("data-raw/create-louland-shp.R", local=T)

louland <- create_newland(.seed = 11, .alt = 2000, .sea = 0.2, .mg = T)

plot(louland$lc_map, col = louland$param$hex)

## Save raster data (ON HOLD - ONLY VECTORS SAVED TO DATA) 
# louland_topo30m <- louland$topo
# louland_topo90m <- louland$topo_map
# louland_lc30m   <- louland$lc
louland_lc90m   <- louland$lc_map
louland_param   <- louland$param
usethis::use_data(louland_param, overwrite = T)

dir.create("inst", showWarnings = F)
dir.create("inst/extdata", showWarnings = F)
terra::writeRaster(louland_lc90m, "inst/extdata/louland_lc90m.tif", overwrite = T)

#tools::checkRdaFiles("data/louland_topo30m.Rda")

## Create image
dir.create("images", showWarnings = F)
png(filename = "images/louland.png", width = 250, height = 250)
make_3d(.newland = louland)
render_snapshot()
dev.off()

## Create video
render_movie(filename = "images/louland.gif")
rgl::rgl.close()

## Create shapefiles
# t1 <- Sys.time()
# louland_lc <- make_shp(.lc = louland$lc_map, .param = louland$param, .smoothness = 2.2)
# t2 <- Sys.time()
# print(t2 - t1)
# 
# louland_admin <- louland_lc %>%
#   sf::st_buffer(100) %>%
#   sf::st_union(by_feature = FALSE) %>%
#   sf::st_as_sf()

## Not used
# topo_seq <- seq(from = round(terra::global(louland$topo, "min")[[1]]), to = round(terra::global(louland$topo, "max")[[1]]), by = 100)
# louland_topo <- louland$topo %>% st_as_stars() %>% st_contour(breaks = topo_seq)

## Check
# ggplot() +
#   geom_sf(data = louland_lc, aes(fill = lc), col = NA) +
#   geom_sf(data = louland_admin, fill = NA, col = "red", size = 1) +
#   scale_fill_manual(values = louland$param$hex) +
#   theme_bw()

## Save vector data
# louland_param <- louland$param
# usethis::use_data(louland_param, overwrite = T)
# 
# dir.create("inst", showWarnings = F)
# dir.create("inst/extdata", showWarnings = F)
# st_write(obj = louland_admin, dsn = "inst/extdata/louland_admin.gpkg", append = FALSE)
# st_write(obj = louland_lc, dsn = "inst/extdata/louland_lc.gpkg", append = FALSE)
# 
# save(louland_lc, file = "inst/extdata/louland_lc.Rda", compress = "xz")
# save(louland_admin, file = "inst/extdata/louland_admin.Rda", compress = "xz")
