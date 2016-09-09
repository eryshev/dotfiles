#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import json
import subprocess

# def get_governor():
#     """ Get the current governor for cpu0, assuming all CPUs use the same. """
#     with open('/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor') as fp:
#         return fp.readlines()[0].strip()

def get_layout():
    """ Get the current keyboard layout using xkblayout-state. """
    return str(subprocess.check_output(["/home/xw/.i3/xkblayout-state/xkblayout-state", "print", "%s"]))

def print_line(message):
    """ Non-buffered printing to stdout. """
    sys.stdout.write(message + '\n')
    sys.stdout.flush()

def read_line():
    """ Interrupted respecting reader for stdin. """
    # try reading a line, removing any extra whitespace
    try:
        line = sys.stdin.readline().strip()
        # i3status sends EOF, or an empty line
        if not line:
            sys.exit(3)
        return line
    # exit on ctrl-c
    except KeyboardInterrupt:
        sys.exit()

if __name__ == '__main__':
    # Skip the first line which contains the version header.
    print_line(read_line())

    # The second line contains the start of the infinite array.
    print_line(read_line())

    while True:
        line, prefix = read_line(), ''
        # ignore comma at start of lines
        if line.startswith(','):
            line, prefix = line[1:], ','

        j = json.loads(line)
        # insert information into the start of the json, but could be anywhere
        # CHANGE THIS LINE TO INSERT SOMETHING ELSE
        j.insert(len(j), {'full_text' : '%s' % get_layout(), 'name' : 'layout'})
        # and echo back new encoded json
        print_line(prefix+json.dumps(j))