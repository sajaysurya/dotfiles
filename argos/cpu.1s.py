#!/bin/python
'''
cpu indicator for i3blocks
'''
from subprocess import check_output
import re

def main():
    '''
    c-style main code
    '''
    load = re.split('[:,\n]', check_output("w | grep -m 1 'load average'", shell=True).decode())[-4:][:3]
    fulltext = f"<span font='FontAwesome'>\uf085</span>  {float(load[0]):0.2f} {float(load[1]):0.2f} {float(load[2]):0.2f}"
    print(fulltext)

if __name__ == "__main__":
    main()
