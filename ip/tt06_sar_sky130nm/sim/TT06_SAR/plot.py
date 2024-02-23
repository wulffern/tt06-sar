#!/usr/bin/env python3


import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt
import glob
import os
import sys
import seaborn as sns


sns.set_style("whitegrid")
sns.set_context("talk")


def paramToStr(data):
    return "A[dB]=%.2f SNDR[dB]=%.2f SFDR[dBc]=%.2f ENOB=%.2f" %(data["amp"],data["sndr"],data["sfdr"],data["enob"])


if(len(sys.argv) < 2):
    print("I need a run file")
    exit()

runfile = sys.argv[1]

#- Get output files from run
files = list()
with open(runfile) as fi:
    for l in fi:
        files.append(l.strip() + ".raw")

idsqs = list()

tsample = 250

f,ax = plt.subplots(1,1,sharex=False)

axes = list()
axes.append(ax)
f.set_figheight(8)
f.set_figwidth(15)
for f in files:
    dfs = cs.toDataFrames(cs.ngRawRead(f))
    fn = f.replace(".raw","")
    df = dfs[0]

    df.set_index("time",inplace=True)
    df.index = pd.to_datetime(df.index,unit='s')


    fullscale_in = 2

    sigi = (df["v(ua[1])"] - df["v(ua[0])"])/fullscale_in
    saro = df["v(ro)"]

    sigixx =  sigi.resample(pd.Timedelta(tsample,unit="ns")).first()
    saroxx =  saro.resample(pd.Timedelta(tsample,unit="ns")).first()

    nbpt = int(2**np.floor(np.log2(len(sigixx))))
    sigixx = sigixx[-nbpt-1:-1]
    saroxx = saroxx[-nbpt-1:-1]

    scc = cs.SimCalc()
    (data1,ydB1) = scc.fft(sigixx.to_numpy())
    (data3,ydB3) = scc.fft(saroxx.to_numpy())
    #(data1,ydB1) = scc.fftWithHanning(sigixx.to_numpy())
    #(data3,ydB3) = scc.fftWithHanning(saroxx.to_numpy())

    #axes[0].plot(ydB1,label=f + " v(in):" +paramToStr(data1),linestyle='solid',marker="d")
    axes[0].plot(ydB3,label=fn + " v(ro):" + paramToStr(data3),linestyle='solid',marker="o")
    #axes[0].stem(ydB1,label=f + " v(in):" +paramToStr(data1),linefmt='-.',bottom=-100)
    #axes[0].stem(ydB3,label=f + " v(ro):" + paramToStr(data3),linefmt=':',bottom=-100)

axes[0].set_ylabel("Power Spectrum [dBFS]")
axes[0].set_xlabel("FFT bin")
axes[0].grid(True)
axes[0].legend()
axes[0].axis([0,len(ydB3),-100,10])
plt.tight_layout()

if(len(sys.argv)> 2):
    plt.show()
else:
    plt.savefig(runfile.replace(".run",".png"))
