import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/series.dart';

class ApiService {
  static const String baseUrl =
      'https://aqsa-series-content.vercel.app/api';

  static Future<List<Series>> fetchSeries() async {
    final response = await http.get(Uri.parse('$baseUrl/podcasts'));

    if (response.statusCode == 200) {
      final List data = json.decode(response.body);
      return data.map((e) => Series.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load series');
    }
  }
}
