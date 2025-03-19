import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiServicesIntegration {
  final String baseUrl = "http://dev.cjnnow.com/api/gettvshowinfo01";

  // API Call to fetch show details
  Future<Map<String, dynamic>?> fetchShowDetails() async {
    final response = await http.post(
      Uri.parse(baseUrl),
      headers: {
        "Content-Type": "application/json",
        "apikey": "987654321",
      },
      body: jsonEncode({
        "show_id": "s501",
      }),
    );

    print("API Response: ${response.body}");

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      print("API call failed! Status Code: ${response.statusCode}");
      return null;
    }
  }
}
