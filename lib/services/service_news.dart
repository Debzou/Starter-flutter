import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';

class ServiceHttpNews {
  late final http.Client httpClient;

  ServiceHttpNews({required this.httpClient});

  factory ServiceHttpNews.defaultInit() {
    return ServiceHttpNews(httpClient: IOClient());
  }

  Future<Object> fetchNews() async {
    return Object();
  }
}
