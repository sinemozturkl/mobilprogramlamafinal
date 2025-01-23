
import 'dart:convert';

class WeatherAPI {
  final String apiKey = 'package:http/http.dart';
  
  http() => null; // Buraya gerçek API anahtarınızı yazın.

  Future<Map<String, dynamic>> getWeather(String city) async {
    final Uri url = Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric');

    try {
      final response = await http().get(url);

      if (response.statusCode == 200) {
        return json.decode(response.body);
      } else {
        // ignore: avoid_print
        print('⚠️ Hata Kodu: ${response.statusCode}');
        // ignore: avoid_print
        print('📌 Hata Mesajı: ${response.body}');
        throw Exception('Hava durumu verileri yüklenemedi! Hata kodu: ${response.statusCode}');
      }
    } catch (e) {
      // ignore: avoid_print
      print('❌ Bir hata oluştu: $e');
      throw Exception('Bağlantı hatası: $e');
    }
  }
}

