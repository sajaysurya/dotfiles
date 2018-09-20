'''
mem indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    mem = int(check_output('free | grep Mem', shell=True).decode().split(' ')[-1])
    fulltext = "<span font='FontAwesome'>\uf538</span> {0:.2f} GiB".format(mem/1e6)
    print(fulltext)

if __name__ == "__main__":
    main()
