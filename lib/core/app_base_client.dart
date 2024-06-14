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

  Future<dynamic> get(String api) async {
    return await baseRequest('GET', api);
  }

  Future<dynamic> post(String api, dynamic object) async {
    return await baseRequest('POST', api, body: object);
  }

  Future<dynamic> put(String api, dynamic object) async {
    return await baseRequest('PUT', api, body: object);
  }

  Future<dynamic> patch(String api, dynamic object) async {
    return await baseRequest('PATCH', api, body: object);
  }

  Future<dynamic> delete(String api) async {
    return await baseRequest('DELETE', api);
  }

  Future<dynamic> baseRequest(String method, String api, {dynamic body}) async {
    var url = Uri.parse('$baseUrl/$api');
    var headers = buildHeaders();
    var payload = body != null ? jsonEncode(body) : null;
    var response = await _sendRequest(method, url, headers, payload);

    if (response.statusCode >= 200 && response.statusCode < 300) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Error ${response.statusCode}: ${response.reasonPhrase}');
    }
  }

  Future<http.Response> _sendRequest(String method, Uri url, Map<String, String> headers, String? body) {
    switch (method) {
      case 'POST':
        return client.post(url, headers: headers, body: body);
      case 'PUT':
        return client.put(url, headers: headers, body: body);
      case 'PATCH':
        return client.patch(url, headers: headers, body: body);
      case 'DELETE':
        return client.delete(url, headers: headers);
      case 'GET':
      default:
        return client.get(url, headers: headers);
    }
  }

  Map<String, String> buildHeaders() {
    return Map<String, String>.from(defaultHeaders);
  }
}
