#!/usr/bin/env python

import subprocess
import sys
import re

if len(sys.argv) < 2:
  sys.exit()

output = subprocess.check_output(['xwininfo', '-tree', '-root', '-int']).decode("utf-8")

lines = [l.strip() for l in output.split('\n') if sys.argv[1] in l]

inputCompileRegex = re.compile(f'{sys.argv[1]}')

for line in lines:
  compiledRegex = re.compile('([\d]+) "(.+)":')

  lineMatch = compiledRegex.search(line)

  if lineMatch == None:
    continue

  windowId = lineMatch.group(1)
  windowName = lineMatch.group(2)

  inputMatch = inputCompileRegex.search(windowName)

  if inputMatch == None:
    continue

  print(windowId + '|' + windowName)


