import requests

# USER MUST PROVIDE THIS INFORMATION
USERNAME = "username"
PASSWORD = "password"
SUBSCRIPTION_KEY = "subscription"

# Authorization URL for signing into ERCOT Public API account
AUTH_URL = "https://ercotb2c.b2clogin.com/ercotb2c.onmicrosoft.com/B2C_1_PUBAPI-ROPC-FLOW/oauth2/v2.0/token\
?username={username}\
&password={password}\
&grant_type=password\
&scope=openid+fec253ea-0d06-4272-a5e6-b478baeecd70+offline_access\
&client_id=fec253ea-0d06-4272-a5e6-b478baeecd70\
&response_type=id_token"

# Sign In/Authenticate
auth_response = requests.post(AUTH_URL.format(username = USERNAME, password=PASSWORD))

# Retrieve access token
access_token = auth_response.json().get("access_token")

# Use Subscription key and bearer token to retrieve all Public API Reports
PRODUCTS_URL = "https://api.ercot.com/api/public-reports"
headers = {"Authorization": "Bearer " + access_token, "Ocp-Apim-Subscription-Key": SUBSCRIPTION_KEY}
product_response = requests.get(PRODUCTS_URL, headers=headers)

print(product_response.text)
