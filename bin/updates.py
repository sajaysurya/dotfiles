'''
updates indicator for i3blocks
'''
from subprocess import check_output

def main():
    '''
    c-style main code
    '''
    pac_count = check_output(['checkupdates | wc -l'], shell=True)
    aur_count = check_output(['yay -Qua | wc -l'], shell=True)
    fulltext = "PAC:{} AUR:{}".format(int(pac_count), int(aur_count))
    print(fulltext)

if __name__ == "__main__":
    main()
