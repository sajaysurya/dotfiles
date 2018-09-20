'''
cpu indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    cpu = check_output('mpstat | grep all', shell=True).decode().split(' ')[-1].split('\n')[0]
    fulltext = "<span font='FontAwesome'>\uf2db</span> {0:.2f}%".format(100.0 - float(cpu))
    temp = check_output('sensors | egrep temp1 | egrep crit', shell=True).decode().split('+')[1].split(' ')[0]
    fulltext += "  <span font='FontAwesome'>\uf2c9</span> {}".format(temp)
    print(fulltext)

if __name__ == "__main__":
    main()
