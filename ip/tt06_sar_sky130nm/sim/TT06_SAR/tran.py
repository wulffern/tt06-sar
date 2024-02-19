#!/usr/bin/env python3
import pandas as pd
import yaml

def main(name):
  # Delete next line if you want to use python post processing
  return
  yamlfile = name + ".yaml"

  # Read result yaml file
  with open(yamlfile) as fi:
    obj = yaml.safe_load(fi)

  # Do something to parameters

  # Save new yaml file
  with open(yamlfile,"w") as fo:
    yaml.dump(obj,fo)
