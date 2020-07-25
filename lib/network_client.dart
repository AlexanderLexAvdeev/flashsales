import 'package:http/http.dart' as client;

class NetworkClient {
  static final String _scheme = "https://";

  String _host;

  NetworkClient(String host) {
    _host = host ?? "";
  }

  Future<client.Response> get(String path) async {
    return await client.get(_scheme + _host + path);
  }
}
