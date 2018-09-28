'''
currency exchange indicator for i3blocks
'''
import requests

def main():
    '''
    c-style main function
    '''
    url = "https://openexchangerates.org/api/latest.json?app_id=eed4015f0c83443ab9fec237739c5795"
    data = requests.get(url=url).json()
    usd = data['rates']['INR']
    gbp = usd/data['rates']['GBP']
    fulltext = '<span font="FontAwesome">\uf155:{0:.2f} \uf156</span>  <span font="FontAwesome">\uf154:{1:.2f} \uf156</span>'.format(usd, gbp)
    print(fulltext)

if __name__ == "__main__":
    main()
