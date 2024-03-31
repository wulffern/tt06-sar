
#- Core makefile provides the following commands:
# -----------------------------------------------------------
# ip: generate ../design/<LIB> from ../cic/ip.json
# gds: generate gds/<CELL>.gds
# cdl: generate cdl/<CELL>.cdl
# lvs: Check cdl/<CELL>.cdl versus ../design/<LIB>/<CELL>.mag
# lpe: Extract parasitics lpe/<CELL>.spi
# drc: Run design rule checks on ../design/<LIB>/<CELL>.mag
# svg: Make schematic SVGs in ../documents/schematic.md
# -----------------------------------------------------------


PREFIX=
LIB=TT06_SAR_SKY130NM
CELL=tt_um_TT06_SAR_wulffern

#- Which libraries to make SVG files for
SVGLIBS=TT06_SAR_SKY130NM

CICEXCLUDE="^(${PREFIX}SUNTR_)"


deliver:
	magic -noconsole -dnull deliver.tcl

#- Provide cells you want to check for the lvsall drcall commands
CELLS = tt_um_TT06_SAR

include ../tech/make/core.make
