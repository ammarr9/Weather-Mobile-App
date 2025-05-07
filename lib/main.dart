import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather/screens/login.dart';
import 'package:weather/Provider/registeration_provider.dart';
import 'package:weather/Provider/Weather_Provider.dart';


void main()
{
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MultiProvider(
      providers:
      [
        ChangeNotifierProvider(create:  (context) => WeatherProvider()),
        ChangeNotifierProvider(create:  (context) => RegisterProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Weather App',
        home: LoginPage(),
      ),
    );
  }
}