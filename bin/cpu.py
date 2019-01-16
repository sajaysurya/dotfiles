'''
cpu indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    load = check_output('w | grep load', shell=True).decode().split(':')[-1].split(',')[:]
    fulltext = "<span font='FontAwesome'>\uf085</span> {} {} {}".format(load[0], load[1], load[2])
    print(fulltext)

if __name__ == "__main__":
    main()
