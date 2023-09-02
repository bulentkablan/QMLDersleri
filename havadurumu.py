import requests

# WeatherAPI API anahtarınızı buraya ekleyin
api_key = '548832da0e9f4e2d93480648230209'

# Hava durumu bilgisini almak istediğiniz şehir adını burada belirtin
city = 'Istanbul'

# API isteğini oluşturun
url = f'https://api.weatherapi.com/v1/current.json?key={api_key}&q={city}'

# API'ye GET isteği gönderin ve yanıtı alın
response = requests.get(url)

# Yanıtı JSON formatına çevirin
data = response.json()

# Hava durumu bilgilerini görüntüleyin
if 'error' in data:
    print(f'Hava durumu bilgileri alınamadı. Hata: {data["error"]["message"]}')
else:
    location = data['location']
    current = data['current']
    temperature = current['temp_c']
    humidity = current['humidity']
    condition = current['condition']['text']

    print(f'Hava Durumu: {condition}')
    print(f'Sıcaklık: {temperature} °C')
    print(f'Nem Oranı: {humidity}%')
