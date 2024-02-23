<!---

This file is used to generate your project datasheet. Please fill in the information below and delete any unused
sections.

You can also include images in this folder and reference them in the markdown. Each image must be less than
512 kb in size, and the combined size of all images must be less than 1 MB.
-->

## How it works

Successive approximation analog-to-digital converter. 



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


## External hardware


