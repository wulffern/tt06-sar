
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

DATE = $(shell date "+%Y-%m-%d_%H%M")
deliver:
	cp ../../../gds/tt_um_TT06_SAR_wulffern.gds ../../../gds/${DATE}_tt_um_TT06_SAR_wulffern.gds
	magic -noconsole -dnull deliver.tcl

#- Provide cells you want to check for the lvsall drcall commands
CELLS = tt_um_TT06_SAR

include ../tech/make/core.make


lowres:
	cd lpe; cat tt_um_TT06_SAR_wulffern_lper.spi |perl -pe 'if(m/^R/ig){unless(m/sky/ig){s/\s[\d\.]+\n/ 0.1\n/ig}};' > tt_um_TT06_SAR_wulffern_lper_lowr.spi
