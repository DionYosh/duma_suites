import 'dart:convert';
import 'package:http/http.dart' as http;

class BaseClient {
  final String baseUrl;
  final Map<String, String> defaultHeaders;
  final http.Client client;

  BaseClient({
    required this.baseUrl,
    required this.defaultHeaders,
    http.Client? client,
  }) : client = client ?? http.Client();

  // GET
  Future<dynamic> get(String api) async {
    var url = Uri.parse('$baseUrl/$api');
    // Use a separate method for header construction
    var headers = buildHeaders();
    var response = await client.get(url, headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Parse JSON response
    } else {
      throw Exception('Error: ${response.statusCode}'); // Throw exception
    }
  }

  // POST
  Future<dynamic> post(String api, dynamic object) async {
    var url = Uri.parse('$baseUrl/$api');
    var payload = jsonEncode(object); // Encode data as JSON
    var headers = buildHeaders();
    // headers['Content-Type'] = 'application/json';
    var response = await client.post(url, body: payload, headers: headers);
    if (response.statusCode == 201) {
      return jsonDecode(response.body); // Parse JSON response (optional)
    } else {
      throw Exception('Error: ${response.statusCode}'); // Throw exception
    }
  }

  // PUT
  Future<dynamic> put(String api, dynamic object) async {
    var url = Uri.parse('$baseUrl/$api');
    var payload = jsonEncode(object); // Encode data as JSON
    var headers = buildHeaders(); // Copy default headers
    var response = await client.put(url, body: payload, headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Parse JSON response (optional)
    } else {
      throw Exception('Error: ${response.statusCode}'); // Throw exception
    }
  }

  // PATCH
  Future<dynamic> patch(String api, dynamic object) async {
    var url = Uri.parse('$baseUrl/$api');
    var payload = jsonEncode(object); // Encode data as JSON
    var headers = buildHeaders(); // Copy default headers
    var response = await client.patch(url, body: payload, headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Parse JSON response (optional)
    } else {
      throw Exception('Error: ${response.statusCode}'); // Throw exception
    }
  }

  // DELETE
  Future<dynamic> delete(String api) async {
    var url = Uri.parse('$baseUrl/$api');
    var headers = buildHeaders(); // Copy default headers
    var response = await client.delete(url, headers: headers);
    if (response.statusCode == 200) {
      return jsonDecode(response.body); // Parse JSON response (optional)
    } else {
      throw Exception('Error: ${response.statusCode}'); // Throw exception
    }
  }

  // Helper method to build headers (ensures string keys)
  Map<String, String> buildHeaders() {
    // Copy default headers
    var headers = Map<String, String>.from(defaultHeaders);
    // Add any additional custom headers with string keys here (optional)
    return headers;
  }
}

final client = BaseClient(
  baseUrl: 'https://localhost:5050/api',
  defaultHeaders: {
    'Authorization': 'Bearer your_auth_token',
    'api_key': '4C0S-fBL8ioTsxplZC5fQubpv1AYf6Zi',
    'Content-Type': 'application/json',
  },
);
