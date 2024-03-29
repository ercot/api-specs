import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class PubAPIAuthenticator {

    private final static String USERNAME = "username";
    private final static String PASSWORD = "password";

    public static void main(String[] args) {

        HttpClient httpClient = HttpClient.newHttpClient();

        final String URL_STR = "https://ercotb2c.b2clogin.com/ercotb2c.onmicrosoft.com/B2C_1_PUBAPI-ROPC-FLOW/oauth2/v2.0/token"
        + "?username=" + USERNAME
        + "&password=" + PASSWORD
        + "&grant_type=password"
        + "&scope=openid+fec253ea-0d06-4272-a5e6-b478baeecd70+offline_access"
        + "&client_id=fec253ea-0d06-4272-a5e6-b478baeecd70"
        + "&response_type=id_token";

        HttpRequest request = HttpRequest.newBuilder()
        .uri(URI.create(URL_STR))
        .POST(HttpRequest.BodyPublishers.noBody())
        .build();

        try {
            HttpResponse<String> response = httpClient.send(request, HttpResponse.BodyHandlers.ofString());
            System.out.println(response.body());
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        

    }
}