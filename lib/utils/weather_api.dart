
import 'dart:convert';

class WeatherAPI {
  final String apiKey = 'GERÇEK_API_ANAHTARINIZ';
  
  get http => null;

  Future<Map<String, dynamic>> getWeather(String city) async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric'));

    if (response.statusCode == 200) {
      return json.decode(response.body);
    } else {
      // ignore: avoid_print
      print('Hava durumu verilerini yükleme başarısız: ${response.statusCode}');
      throw Exception('Hava durumu verilerini yükleme başarısız');
    }
  }
}