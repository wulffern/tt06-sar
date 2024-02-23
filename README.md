![](../../workflows/gds/badge.svg) ![](../../workflows/docs/badge.svg)


# 8-bit SAR ADC for Tiny Tapeout

# Who
Carsten Wulff carsten@wulff.no

# Why
Many years ago I made a compiler, and a state-of-the-art compiled ADC in 28 nm
FDSOI, described in [A Compiled 9-bit 20-MS/s
3.5-fJ/conv.step SAR ADC in 28-nm FDSOI for Bluetooth Low Energy
Receivers](https://ieeexplore.ieee.org/document/7906479). Since then, I've
ported the ADC to multiple closed PDKs (22 nm FDSOI, 22 nm, 28 nm, 55 nm, 65 nm and
130nm). A while ago I ported to Skywater 130nm
[SUN_SAR9B_SKY130NM](https://github.com/wulffern/sun_sar9b_sky130nm/tree/main).

The fact that tiny-tapeout now includes analog possibility inspired me to try
and see if I could fit into the tiny tapeout area. The original 9-bit ADC did
not fit, so I had to reduce it to 8-bit.

Took a few days, but I think it's ready to tapeout (need to complete the sims
though).


# Clone and have a look
``` bash
git clone --recursive git@github.com:wulffern/tt06-sar.git
cd tt06-sar/ip/tt06_sar_sky130nm/work/
xschem -b ../design/TT06_SAR_SKY130NM/tt_um_TT06_SAR_wulffern.sch &
magic ../design/TT06_SAR_SKY130NM/tt_um_TT06_SAR_wulffern.mag &
```


# How
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

# Compiler
The SAR is pre-compiled, so you don't really need to compile it. The compiled files are
in the `ip/sun_sar9b_sky130nm/design/` directory

To compile the ADC you need

- Compiler [ciccreator](https://github.com/wulffern/ciccreator)
- Transpiler [cicpy](https://github.com/wulffern/cicpy)


# Running simulation

You need [cicsim](https://github.com/wulffern/cicsim) to run the
simulations.

If you think everything is installed, then try 

``` bash
cd ip/TT06_SAR_SKY130NM/sim/TT06_SAR 
make typical OPT="Debug"
```

# Testbenches

| Name                                       | Purpose                                                   | Notes                                 |
|:-------------------------------------------|-----------------------------------------------------------|---------------------------------------|
| ip/TT06_SAR_SKY130NM/sim/TT06_SAR/tran.spi | Full simulation of SAR, takes 1.5 hours on my Macbook pro | python3 plot.py <runfile> to plot FFT |


# Key parameters
| Parameter                            | Min | Typ      | Max | Unit |
|:-------------------------------------|:---:|:--------:|:---:|:----:|
| Technology                           |     | SKY130NM |     |      |
| AVDD                                 | 1.7 | 1.8      | 1.9 | V    |
| Temperature                          | -40 | 27       | 125 | C    |
| Sampling frequency 25% DTC CK_SAMPLE |     |          | 8   | MHz  |
| Average current VPWR                 |     | 33       |     | uA   |
| Power consumption                    |     | 60       |     | uW   |
| SNDR without device noise            |     |          |     | dBFS |
| SFDR                                 |     |          |     | dBc  |
| ENOB without device noise            |     |          |     | bit  |





---

# Tiny Tapeout Analog Project Template

- [Read the documentation for project](docs/info.md)

## What is Tiny Tapeout?

TinyTapeout is an educational project that aims to make it easier and cheaper than ever to get your digital designs manufactured on a real chip.

To learn more and get started, visit https://tinytapeout.com.

## Analog projects

For specifications and instructions, see the [analog specs page](https://tinytapeout.com/specs/analog/).

*Note*: Analog designs are currently in beta. There's a small chance that the changes will change before the deadline for Tiny Tapeout 6, or that we will have to postpone the analog design support to a future shuttle. If you have any questions, please join the [Tiny Tapeout Discord](https://tinytapeout.com/discord) and ask in the #analog channel.

## Enable GitHub actions to build the results page

- [Enabling GitHub Pages](https://tinytapeout.com/faq/#my-github-action-is-failing-on-the-pages-part)

## Resources

- [FAQ](https://tinytapeout.com/faq/)
- [Digital design lessons](https://tinytapeout.com/digital_design/)
- [Learn how semiconductors work](https://tinytapeout.com/siliwiz/)
- [Join the community](https://tinytapeout.com/discord)
- [Build your design locally](https://docs.google.com/document/d/1aUUZ1jthRpg4QURIIyzlOaPWlmQzr-jBn3wZipVUPt4)

## What next?

- [Submit your design to the next shuttle](https://app.tinytapeout.com/).
- Edit [this README](README.md) and explain your design, how it works, and how to test it.
- Share your project on your social network of choice:
  - LinkedIn [#tinytapeout](https://www.linkedin.com/search/results/content/?keywords=%23tinytapeout) [@TinyTapeout](https://www.linkedin.com/company/100708654/)
  - Mastodon [#tinytapeout](https://chaos.social/tags/tinytapeout) [@matthewvenn](https://chaos.social/@matthewvenn)
  - X (formerly Twitter) [#tinytapeout](https://twitter.com/hashtag/tinytapeout) [@matthewvenn](https://twitter.com/matthewvenn)
