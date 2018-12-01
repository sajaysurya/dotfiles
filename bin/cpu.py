'''
cpu indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    cpu = check_output('top -b -n 1 | grep Cpu', shell=True).decode().split(' id,')[0].split(' ')[-1]
    fulltext = "<span font='FontAwesome'>\uf2db</span> {}%".format(cpu)
    print(fulltext)

if __name__ == "__main__":
    main()
