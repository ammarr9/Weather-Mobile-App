import 'package:flutter/cupertino.dart';
import 'package:weather/Model/Weather_model.dart';
import 'package:weather/Service/Weather_Service.dart';

class WeatherProvider with ChangeNotifier
{
  WeatherModel? weather;

  Future<void> fetchWeatherByCity(String city) async
  {
    weather = await WeatherService.getWeatherByCity(city);
    notifyListeners();
  }
}