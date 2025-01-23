import 'package:flutter/material.dart';
import '../utils/weather_api.dart';

class WeatherWidget extends StatefulWidget {
  const WeatherWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _WeatherWidgetState createState() => _WeatherWidgetState();
}

class _WeatherWidgetState extends State<WeatherWidget> {
  final String _city = "Istanbul"; // Varsayılan şehir
  String _weatherDescription = "";
  String _temperature = "";
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _fetchWeather();
  }

  // Hava durumu verilerini almak için API'den veri çekme fonksiyonu
  Future<void> _fetchWeather() async {
    setState(() {
      _isLoading = true;
    });
    try {
      var weatherData = await WeatherAPI().getWeather(_city);
      setState(() {
        _weatherDescription = weatherData['weather'][0]['description'];
        _temperature = weatherData['main']['temp'].toString();
        _isLoading = false;
      });
    } catch (e) {
      setState(() {
        _weatherDescription = "Failed to load weather data";
        _temperature = "";
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Text(
            "Weather in $_city",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          _isLoading
              ? CircularProgressIndicator() // Veriler yükleniyorsa dönen çark
              : Column(
                  children: [
                    Text(
                      "Temperature: $_temperature°C",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Condition: $_weatherDescription",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _fetchWeather, // Hava durumu verilerini tekrar çek
            child: Text("Refresh Weather"),
          ),
        ],
      ),
    );
  }
}