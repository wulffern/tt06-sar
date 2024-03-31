<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## Why
Many years ago I made a compiler, and a state-of-the-art compiled ADC in 28 nm
FDSOI, described in [A Compiled 9-bit 20-MS/s
3.5-fJ/conv.step SAR ADC in 28-nm FDSOI for Bluetooth Low Energy
Receivers](https://ieeexplore.ieee.org/document/7906479). 

Since then, I've
ported the ADC to multiple closed PDKs (22 nm FDSOI, 22 nm, 28 nm, 55 nm, 65 nm and
130nm). A while ago I ported to Skywater 130nm
[SUN_SAR9B_SKY130NM](https://github.com/wulffern/sun_sar9b_sky130nm/tree/main).

The fact that Tiny Tapeout now includes analog possibility inspired me to try
and see if I could fit into the Tiny Tapeout area. The original 9-bit ADC did
not fit, so I had to reduce it to 8-bit.

Took a few days, but I think it's ready to tapeout (need to complete the
verification plan though).

## Key parameters

| Parameter                | Min | Typ      | Max | Unit |
|:-------------------------|:---:|:--------:|:---:|:----:|
| Technology               |     | SKY130NM |     |      |
| AVDD                     | 1.7 | 1.8      | 1.9 | V    |
| Temperature              | -40 | 27       | 125 | C    |
| Sampling frequency (CLK) |     |          | 4   | MHz  |
| Average current VPWR     |     | 45       |     | uA   |
| SNDR                     |     | 46       |     | dBFS |
| SFDR                     |     | 53       |     | dBc  |
| ENOB                     |     | 7.1      |     | bit  |


## How it works

The differential input (ua[1:0]) is sampled onto a capacitor array. 

A strong arm comparator decides whether the differential voltage
is larger or smaller than zero. 

Based on the comparator decision, parts of the capacitor
array is switched from VPWR to VGND, or visa versa. 

A asynchronous custom digital logic performs a binary search to find the digital value. 

## How to simulate

Initialize submodules

```
git submodule init
git submodule update 
```

Install cicsim
```bash
python3 -m pip install cicsim
```

Navigate to the testbench and run a typical simulation (requires cicsim)

```bash 
cd ip/tt06_sar_sky130nm/sim/TT06_SAR
make typical
```

The main testbench is `ip/tt06_sar_sky130nm/sim/TT6_06` 

## How to test

Apply a differential voltage with a common mode of around VDD/2 to ua[1] and
ua[0].

Apply a 25 % duty-cycle, max 8 MHz, clock to clk.

Set ui_in[0] high to enable the ADC

The digital outputs uo_out[7:0] is two's complement digital output.

The uio_out[0] is the "done" signal from the asynchronous binary search
algorithm. The digital output are sampled on the rising edge of this "done"
signal. 

If you want to capture the output of the ADC with a logic analyzer then
I'd recommend you sample the digital outputs on the falling edge of the "done"
signal. 

If there is no "done" signal, then the clock is too fast. 


## How to compile
Made with [ciccreator](https://github.com/wulffern/ciccreator) and
 [cicpy](https://github.com/wulffern/cicpy).
 
The sources for the ADC are

``` bash
ip/sun_sar9b_sky130nm/cic
├── ip.json                      # Object file, describes the object hierarchy of the circuits in the SAR
├── ip.spi                       # Spice file, describes the connectivity 
├── capacitor.json               # Object file for capacitors
├── dmos_sky130nm_core.json      # Object file for transistors
└── sky130.tech                  # Technology file for Skywater 130 nm
```

The SAR is pre-compiled, so you don't really need to compile it. The compiled files are
in the `ip/sun_sar9b_sky130nm/design/` directory.

If you want to try the compilation, then compile ciccreator and cicpy, next 

```
cd ip/sun_sar9b_sky130nm/work
make ip
```

## External hardware


