'''
mem indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    mem = int(check_output('free | grep Mem', shell=True).decode().split(' ')[-1])
    fulltext = "<span font='FontAwesome'>\uf16c</span> {0:.2f}GiB".format(mem/1024**2)
    dsk = check_output('df -h | grep ubuntu', shell=True).decode().split()[3]
    fulltext += " <span font='FontAwesome'>\uf0a0</span> {}iB".format(dsk)
    print(fulltext)

if __name__ == "__main__":
    main()
