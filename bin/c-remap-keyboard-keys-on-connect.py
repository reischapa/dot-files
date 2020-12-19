#!/usr/bin/env python3

import pyudev
import subprocess

ctx = pyudev.Context()
monitor = pyudev.Monitor.from_netlink(ctx)
monitor.filter_by("input")

deviceIds = ["04D9:A293", "04D9:A0F8"]

def runRemap():
    print('Executing c-remap-keyboard-keys...');
    subprocess.run("/bin/su -c 'source ~/.bashrc; ~/bin/c-remap-keyboard-keys' chapa", shell=True, executable='/bin/bash')

for device in iter(monitor.poll, None):
    if device.action != "add":
        continue

    if not device.is_initialized:
        continue

    for deviceId in deviceIds:
      if deviceId in device.device_path:
        runRemap()

