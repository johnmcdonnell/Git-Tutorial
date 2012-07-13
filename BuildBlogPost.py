# -*- coding: utf-8 -*-
# <nbformat>3.0</nbformat>

# <headingcell level=1>

# Showoff Presentation -> Blog Post

# <headingcell level=2>

#     Setup

# <headingcell level=3>

# Configuration

# <codecell>

config_fn = "showoff.json"
outfile = "blogpost/blogpost.md"

# <headingcell level=3>

# Helper Functions

# <codecell>

# [[a]] -> [a]
def flatten(l):
    return [item for sublist in l for item in sublist]

def concatstrings(x):
    addtwo = lambda x,y: x + y
    return reduce(addtwo, x, "")

# String -> IO [String]
ls = os.listdir

# <headingcell level=3>

# Imports

# <codecell>

import json
import os
import re

config = json.loads(open(config_fn).read())

# <headingcell level=2>

# Extraction

# <headingcell level=3>

# Read in the presentation MD

# <codecell>

mdfiles = flatten([sort([os.path.join(section["section"], x) for x in ls(section["section"])]) for section in config["sections"]])
addtwo = lambda x,y: x + y
md_concatenated = concatstrings([open(f).read() for f in mdfiles])

# <headingcell level=3>

# Remove SLIDE lines

# <codecell>

slide_pattern = r".*SLIDE.*"
md_out = concatstrings( re.split(slide_pattern, md_concatenated) )

# <headingcell level=3>

# Write to a file

# <codecell>

ohandle = open(outfile, "w")
ohandle.write(md_out)
ohandle.close()

