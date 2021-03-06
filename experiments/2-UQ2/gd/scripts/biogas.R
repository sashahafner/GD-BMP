# Calculate different methods of calcBgGD

# Set biogas options
options(unit.pres = 'mbar', pres.std = 1013.25)

# GD calculations
cbg.gdv <- calcBgGD(biogas,
                   temp.vol = 20, pres.vol = 1013.25,
                   temp.grav = 30, pres.grav = 1500,
                   id.name = 'id', vol.name = 'vol',
                   m.pre.name = 'mass.init', m.post.name = 'mass.final',
                   comp.name = 'xCH4', time.name = 'time.d',
                   vented.mass = TRUE, averaging = 'final', vmethod = 'grav',
                   # temp.init = 20,
                   # headspace = setup, vol.hs.name = 'vol.hs', headcomp = 'N2',
                   extrap = TRUE,
                   addt0 = TRUE, showt0 = TRUE)

cbg.gdi <- calcBgGD(biogas,
                   temp.vol = 20, pres.vol = 1013.25,
                   temp.grav = 30, pres.grav = 1500,
                   id.name = 'id', vol.name = 'vol',
                   m.pre.name = 'mass.init', m.post.name = 'mass.final',
                   comp.name = 'xCH4', time.name = 'time.d',
                   vented.mass = FALSE, averaging = 'int', vmethod = 'vol',
                   # temp.init = 20,
                   # headspace = setup, vol.hs.name = 'vol.hs', headcomp = 'N2',
                   extrap = TRUE,
                   addt0 = TRUE, showt0 = TRUE)

cbg.gdt <- calcBgGD(biogas,
                   temp.vol = 20, pres.vol = 1013.25,
                   temp.grav = 30, pres.grav = 1500,
                   id.name = 'id', vol.name = 'vol',
                   m.pre.name = 'mass.init', m.post.name = 'mass.final',
                   comp.name = 'xCH4', time.name = 'time.d',
                   vented.mass = FALSE, averaging = 'final', vmethod = 'vol',
                   # temp.init = 20,
                   # headspace = setup, vol.hs.name = 'vol.hs', headcomp = 'N2',
                   extrap = TRUE,
                   addt0 = TRUE, showt0 = TRUE)

cbg.gdtc <- calcBgGD(biogas,
                   temp.vol = 20, pres.vol = 1013.25,
                   temp.grav = 30, pres.grav = 1500,
                   id.name = 'id', vol.name = 'vol',
                   m.pre.name = 'mass.init', m.post.name = 'mass.final',
                   comp.name = 'xCH4', time.name = 'time.d',
                   vented.mass = FALSE, averaging = 'final', vmethod = 'vol',
                   temp.init = 20, pres.init = 1013.25,
                   headspace = setup, vol.hs.name = 'vol.hs', headcomp = 'N2',
                   extrap = TRUE,
                   addt0 = TRUE, showt0 = TRUE)


# Combine all cbg data together
cbg.list <- list(gdt = cbg.gdt,
                 gdi = cbg.gdi,
                 gdv = cbg.gdv,
                 gdtc = cbg.gdtc
                )
