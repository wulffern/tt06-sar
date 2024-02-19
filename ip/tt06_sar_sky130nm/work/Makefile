
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
CELL=TT06_SAR

#- Which libraries to make SVG files for
SVGLIBS=TT06_SAR_SKY130NM

#- Provide cells you want to check for the lvsall drcall commands
CELLS = TT06_SAR

include ../tech/make/core.make
