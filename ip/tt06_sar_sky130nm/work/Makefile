
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
	cp ../../../gds/${CELL}.gds ../../../gds/${DATE}_${CELL}.gds
	cp ant/${CELL}_ant.log ../../../reports/ant.log
	cp drc/${CELL}_drc.log ../../../reports/drc.log
	cp lvs/${CELL}_lvs.log ../../../reports/lvs.log
	cp lpe/${CELL}_lpe.spi ../../../spi
	cp xsch/${CELL}.spice ../../../spi
	cp lpe/${CELL}_lvs.log ../../../reports/lpe_lvs.log
	magic -noconsole -dnull deliver.tcl

#- Provide cells you want to check for the lvsall drcall commands
CELLS = tt_um_TT06_SAR

include ../tech/make/core.make


lowres:
	cd lpe; cat ${CELL}_lper.spi |perl -pe 'if(m/^R/ig){unless(m/sky/ig){s/\s[\d\.]+\n/ 0.1\n/ig}};' > ${CELL}_lper_lowr.spi
