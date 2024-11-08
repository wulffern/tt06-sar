#!/usr/bin/env python3

import click
import pandas as pd
import io
from vcd.reader import TokenKind, tokenize

names = dict()
state = dict()
data = None

alldata = list()

@click.command()
@click.argument("fvcd")
def cli(fvcd):
    global data
    count = 0
    with open(fvcd,'rb') as fi:
        tokens = tokenize(fi)
        N = 18
        while (count < 2**N ):
            token = next(tokens)
            if(token is None):
                break
            if(token.kind is TokenKind.VAR):
                names[token.data.id_code] = token.data.reference
                state[token.data.id_code] = 0
            elif(token.kind is TokenKind.CHANGE_TIME):
                if(data is not None):
                    val = 0
                    for k in names:
                        b = int(names[k].replace("D",""))
                        if(b == 7):
                            val = val - state[k]*2**b
                        else:
                            val = val + state[k]*2**b
                    data["val"] = val/128
                    #print(data)
                    alldata.append(data)
                    pass
                data = dict()
                data["time"] = token.data/10 #Convert to ns
            elif(token.kind is TokenKind.CHANGE_SCALAR):
                state[token.data.id_code] =int(token.data.value)

            count = count + 1

    df = pd.DataFrame(alldata)
    df.to_pickle(fvcd.replace(".vcd",".pkl"))



if __name__ == "__main__":
    cli()
