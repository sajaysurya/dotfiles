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
    fulltext = "<span font='FontAwesome'>\uf085</span> {} {} {}".format(load[0], load[1], load[2])
    print(fulltext)

if __name__ == "__main__":
    main()
