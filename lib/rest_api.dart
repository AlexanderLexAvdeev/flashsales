import 'package:http/http.dart';

import 'network_client.dart';

class RestApi {
  static const _host = "flashsales.burshtat.by";

  final _networkClient = NetworkClient(_host);

  Future<String> findProduct(String query) async {
    Response _response = await _networkClient.get("/api/v1/search/$query");
    return _response.body;
  }
}
