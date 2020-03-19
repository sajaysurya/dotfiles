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
    eur = usd/data['rates']['EUR']
    cny = usd/data['rates']['CNY']
    fulltext = 'USD:{0:.2f} GBP:{1:.2f} EUR:{2:.2f} CNY:{3:.2f}'.format(usd, gbp, eur, cny)
    print(fulltext)

if __name__ == "__main__":
    main()
