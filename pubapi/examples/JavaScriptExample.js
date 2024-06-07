// USER PROVIDED INFORMATION: YOU MUST PROVIDE THIS INFORMATION
const USERNAME = "username";
const PASSWORD = "password";
const SUBSCRIPTION_KEY = "subscription key";

// Authorization URL for logging into ERCOT PubAPI account
const AUTH_URI = "https://ercotb2c.b2clogin.com/ercotb2c.onmicrosoft.com/B2C_1_PUBAPI-ROPC-FLOW/oauth2/v2.0/token"
    + "?username=" + USERNAME
    + "&password=" + PASSWORD
    + "&grant_type=password"
    + "&scope=openid+fec253ea-0d06-4272-a5e6-b478baeecd70+offline_access"
    + "&client_id=fec253ea-0d06-4272-a5e6-b478baeecd70"
    + "&response_type=id_token";

// Authorization Request options, in this case, only that it's a POST request
const AUTH_OPTIONS = {
    method: "POST"
}

// Make API to Authorization endpoint and retrieve ID (Bearer) token 
fetch(AUTH_URI, AUTH_OPTIONS)
    .then(response => response.json())
    .then(result => {
        // Retrieve Bearer token from result JSON
        const BEARER_TOKEN = result.id_token;

        // To test Authorization in the endpoint, 
        // make a call to retrieve all products from PubAPI

        const PRODUCT_URI = "https://api.ercot.com/api/public-reports";
        const PRODUCT_OPTIONS  = {
            headers: {
                "Authorization": "Bearer " + BEARER_TOKEN,
                "Ocp-Apim-Subscription-Key": SUBSCRIPTION_KEY,
            },
            method: "GET"
        }

        fetch(PRODUCT_URI, PRODUCT_OPTIONS)
            .then(response => response.json())
            .then(result => console.log(result))
    })
    .catch(error => console.log("error ", error))
    