#!/usr/bin/env python3
import pandas as pd
import yaml
import pandas as pd
import numpy as np
import cicsim as cs
import matplotlib.pyplot as plt
import glob
import os
import sys
import seaborn as sns


def paramToStr(data):
    return "A[dB]=%.2f SNDR[dB]=%.2f SFDR[dBc]=%.2f ENOB=%.2f" %(data["amp"],data["sndr"],data["sfdr"],data["enob"])


def calc(fname):

    #- Sample clock of ADC
    tsample = 250

    dfs = cs.toDataFrames(cs.ngRawRead(fname + ".raw"))
    df = dfs[0]
    df.set_index("time",inplace=True)
    df.index = pd.to_datetime(df.index,unit='s')

    saro = df["v(ro)"]
    saroxx =  saro.resample(pd.Timedelta(tsample,unit="ns")).first()

    nbpt = int(2**np.floor(np.log2(len(saroxx))))
    saroxx = saroxx[-nbpt-1:-1]

    scc = cs.SimCalc()
    (data,ydB) = scc.fft(saroxx.to_numpy())
    return (data,ydB)

def main(name):
    yamlfile = name + ".yaml"

    # Read result yaml file
    with open(yamlfile) as fi:
        obj = yaml.safe_load(fi)

    (data,ydB) = calc(name)

    obj["SNDR"] = float(data["sndr"])
    obj["AMP"] = float(data["amp"])
    obj["SFDR"] = float(data["sfdr"])
    obj["ENOB"] = float(data["enob"])
    obj["SNDR_FS"]= float(data["sndr"] - data["amp"])
    obj["ENOB_FS"] = float((obj["SNDR_FS"]-1.76)/6.02)

    # Save new yaml file
    with open(yamlfile,"w") as fo:
        yaml.dump(obj,fo)


def plot():
    sns.set_style("whitegrid")
    sns.set_context("talk")

    if(len(sys.argv) < 2):
        print("I need a run file")
        exit()

    runfile = sys.argv[1]

    #- Get output files from run
    files = list()
    with open(runfile) as fi:
        for l in fi:
            files.append(l.strip())

    idsqs = list()


    f,ax = plt.subplots(1,1,sharex=False)

    axes = list()
    axes.append(ax)
    f.set_figheight(8)
    f.set_figwidth(15)
    for f in files:
        (data,ydB) = calc(f)
        axes[0].plot(ydB,label=f + " v(ro):" + paramToStr(data),linestyle='solid',marker="o")


    axes[0].set_ylabel("Power Spectrum [dBFS]")
    axes[0].set_xlabel("FFT bin")
    axes[0].grid(True)
    axes[0].legend()
    axes[0].axis([0,len(ydB),-100,10])
    plt.tight_layout()

    if(len(sys.argv)> 2):
        plt.show()
    else:
        plt.savefig(runfile.replace(".run",".png"))




if __name__ == "__main__":
    plot()
