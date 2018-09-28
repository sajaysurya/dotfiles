'''
mem indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    mem = int(check_output('free | grep Mem', shell=True).decode().split(' ')[-1])
    fulltext = "<span font='FontAwesome'>\uf538</span> {0:.2f}GiB".format(mem/1e6)
    dsk = check_output('df -h | grep /dev/sda2', shell=True).decode().split(' ')[-4]
    fulltext += " <span font='FontAwesome'>\uf51f</span> {}iB".format(dsk)
    print(fulltext)

if __name__ == "__main__":
    main()
