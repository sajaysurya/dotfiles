#!/bin/python
'''
mem indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    avl = int(check_output('free | grep Mem', shell=True).decode().split()[-1])/1024**2
    tot = int(check_output('free | grep Mem', shell=True).decode().split()[1])/1024**2
    fulltext = f"<span font='FontAwesome'>\uf16c</span> {tot-avl:0.1f}/{tot:0.1f}GiB          "
    dsk = check_output('df -h | grep cryptroot', shell=True).decode().split()[3]
    fulltext += " <span font='FontAwesome'>\uf0a0</span> {}iB".format(dsk)
    print(fulltext)

if __name__ == "__main__":
    main()
