import requests

# Define your API token and the endpoint URL
API_TOKEN = '0196c3dc-ca3c-7186-918b-5728ec986007|1LCfT6rAVbecWr3UTrLNumn6N3vnjfnR42bqCMNu94c7bee8'
BASE_URL = 'https://fr24api.flightradar24.com/api'
ENDPOINT = '/historic/flight-positions/full'

# Construct the full URL
url = f"{BASE_URL}{ENDPOINT}"

# Define the headers, including the Authorization header with your API token
headers = {
    'Accept': 'application/json',
    'Authorization':  f'Bearer {API_TOKEN}',
    'Accept-Version': 'v1'
}

# Make the GET request to the API
response = requests.get(url, headers=headers)

# Check if the request was successful
if response.status_code == 200:
    # Parse and print the JSON response
    data = response.json()
    print("Live Flight Positions:")
    print(data)
else:
    print(f"Error: {response.status_code}")
    print(response.text)