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
    jpy = usd/data['rates']['JPY']
    fulltext = 'USD:{0:.2f} GBP:{1:.2f} JPY:{2:.4f}'.format(usd, gbp, jpy)
    print(fulltext)

if __name__ == "__main__":
    main()
