import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class PubAPIAuthenticator {

    // User provided information 
    private final static String USERNAME = "username";
    private final static String PASSWORD = "password";
    private final static String SUBSCRIPTION_KEY = "subscription-key";

    public static void main(String[] args) {

        HttpClient httpClient = HttpClient.newHttpClient();

        // Authorization URL: Used to log in and receive User access token
        final String AUTH_URI = "https://ercotb2c.b2clogin.com/ercotb2c.onmicrosoft.com/B2C_1_PUBAPI-ROPC-FLOW/oauth2/v2.0/token"
        + "?username=" + USERNAME
        + "&password=" + PASSWORD
        + "&grant_type=password"
        + "&scope=openid+fec253ea-0d06-4272-a5e6-b478baeecd70+offline_access"
        + "&client_id=fec253ea-0d06-4272-a5e6-b478baeecd70"
        + "&response_type=id_token";

        // Construct Http Request
        HttpRequest request = HttpRequest.newBuilder()
        .uri(URI.create(AUTH_URI))
        .POST(HttpRequest.BodyPublishers.noBody())
        .build();

        // Attempt to send http request
        try {
            HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());
            String json = response.body(); // Retrieve response body from authorization request

            // Parse request for access token:
            String[] data = json.split(".");
            String bearerToken = null;
            for (String str : data) {
                String[] dataPoints = str.split(":");
                if (dataPoints[0].contains("access_token")) {
                    bearerToken = dataPoints[1].substring(1, dataPoints[1].length()-1);
                    break;
                }
                // If the authorization token could not be found, throw an exception
                if (bearerToken == null) {
                    throw new Exception("Unable to authorize user.");
                }

                // Attempt to request all public api products using api

                final String PRODUCT_URI = "https://api.ercot.com/api/public-reports";
                HttpRequest productRequest = HttpRequest.newBuilder()
                .uri(URI.create(PRODUCT_URI))
                .GET()
                .header("Authorization", "Bearer " + bearerToken)
                .header("Ocp-Apim-Subscription-Key", SUBSCRIPTION_KEY)
                .build();

                HttpResponse<String> productResponse = httpClient.send(productRequest, HttpResponse.BodyHandlers.ofString());
                System.out.println(productResponse.body());
            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        

    }
}