import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/Provider/Weather_Provider.dart';

class WeatherPage extends StatelessWidget
{
  final String city;
  const WeatherPage({super.key, required this.city});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text("Weather App"),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: Consumer<WeatherProvider>(
        builder: (context, weatherProvider, child)
        {
          final weatherObjectProvider = weatherProvider.weather;
          if (weatherObjectProvider == null)
          {
            weatherProvider.fetchWeatherByCity(city);
            return const Center(child: CircularProgressIndicator());
          }

          else
          {
            weatherProvider.fetchWeatherByCity(city);
            return Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:
                [
                  Text(
                    "${weatherObjectProvider.cityName}, ${weatherObjectProvider.countryName}",
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:
                    [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:
                        [
                          Text(
                            "${weatherObjectProvider.temperatureC} °C",
                            style: const TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            weatherObjectProvider.condition,
                            style: const TextStyle(
                              fontSize: 22,
                              fontStyle: FontStyle.italic,
                              color: Colors.white70,
                            ),
                          ),
                        ],
                      ),
                      Image.network(
                        "https:${weatherObjectProvider.conditionIcon}",
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        },
      ),
    );
  }
}