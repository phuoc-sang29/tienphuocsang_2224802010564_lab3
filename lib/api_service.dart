import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();
  final String baseUrl = "https://mockapi.io/clone/69ddea6c410caa3d47ba37f4";

  Future<void> send(String endpoint, Map<String, dynamic> data) async {
    try {
      final Response response = await dio.post("$baseUrl$endpoint", data: data);
      print(response);
    } catch (e) {
      print("Dio error: $e");
    }
  }
}