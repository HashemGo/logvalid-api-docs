import requests

url = "https://api.logvalid.com/delivery"
params = {
    "email": "user@example.com",
    "key": "YOUR_API_KEY"
}
response = requests.post(url, params=params)
print(response.json())