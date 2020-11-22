#!/usr/bin/env python

keyDict = {
  "-": "minus"
}

import subprocess
import sys

if len(sys.argv) < 2:
  sys.exit();

replacements = [];

for c in [c for c in sys.argv[1]]:
  replacement =  keyDict.get(c, c)
  replacements.append(replacement)


result = ' '.join(replacements);

if len(replacements) == 0:
  sys.exit()

subprocess.check_output(['xdotool', 'key'] + replacements)


