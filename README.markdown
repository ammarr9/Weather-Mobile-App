<p align="center">
  <img src="assets/banner.png" style="width: 100%; height: auto;" />
</p>

<div>
  <img alt="Static Badge" src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white">
  <img alt="Static Badge" src="https://img.shields.io/badge/Provider-FF6F00?style=for-the-badge&logoColor=white">
  <img alt="Static Badge" src="https://img.shields.io/badge/Dio-3F51B5?style=for-the-badge&logoColor=white">
</div>

# Weather Mobile App 🌦️

## 📋 Table of Contents

1. 🤖 [Introduction](#introduction)
2. ⚙️ [Tech Stack](#tech-stack)
3. 🔋 [Features](#features)
4. 🤸 [Quick Start](#quick-start)
5. 🕸️ [Snippets](#snippets)
6. 📸 [Screenshots](#screenshots)

## <a name="introduction">🤖 Introduction</a>

A sleek and functional weather app built with Flutter, designed to provide users with real-time weather information for any city. The app features user authentication, allowing seamless registration and login, and displays weather details like temperature, condition, and more, with a clean and responsive interface styled in a calming indigo theme.

## <a name="tech-stack">⚙️ Tech Stack</a>

- Flutter
- Provider
- Dio
- Google Fonts

## <a name="features">🔋 Features</a>

### Features of the Weather Mobile App 🌦️

👉 **User Authentication**: Register and log in securely to access weather data.

👉 **City Weather Search**: Search for current weather conditions by city name with real-time updates.

👉 **Weather Display**: View detailed weather information, including temperature, condition, city, country, and condition icons.

👉 **Responsive UI**: A modern, mobile-first design with a soothing indigo (#3F51B5) color scheme.

👉 **Dynamic State Management**: Uses Provider for efficient state management across screens.

👉 **Error Handling**: Graceful handling of API errors with user-friendly messages.

👉 **Custom Widgets**: Reusable widgets like `CustomTextField` for consistent form inputs.

👉 **Modular Code Architecture**: Organized code structure for scalability and maintenance.

and many more, ensuring a smooth user experience and easy future enhancements.

## <a name="quick-start">🤸 Quick Start</a>

Follow these steps to set up the project locally on your machine.

**Prerequisites**

Make sure you have the following installed on your machine:

- Git ⚫
- Flutter SDK 🔵
- Dart 🔵

**Cloning the Repository**

```bash
git clone https://github.com/username/weather_app.git
cd weather_app
```

**Installation**

Install the project dependencies using Flutter:

```bash
flutter pub get
```

**Set Up Environment Variables**

No environment variables are required for this project. Ensure all assets are correctly placed in the `assets/` directory as specified in `pubspec.yaml`.

**Running the Project**

```bash
flutter run
```

Open your emulator or connected device to view the project. For web, use:

```bash
flutter run -d chrome
```

## <a name="snippets">🕸️ Snippets</a>

<details>
<summary><code>lib/services/weather_service.dart</code></summary>

```dart
import 'package:dio/dio.dart';
import 'package:weather/Model/Weather_model.dart';

class WeatherService
{
  static Dio dio = Dio();

  static Future<WeatherModel> getWeatherByCity(String city) async
  {
    try
    {
      final response = await dio.get(
        'https://api.weatherapi.com/v1/current.json?q=$city&key=805d8e4621234f858ee72953251903',
      );
      return WeatherModel.fromJson(response.data);
    }
    catch (e)
    {
      throw Exception('Failed to fetch weather data: $e');
    }
  }
}
```

</details>

## <a name="screenshots">📸 Screenshots</a>

Explore the Weather Mobile App's intuitive and visually appealing interface through these screenshots:

<div style="max-width: 360px; margin: 0 auto;">
  <p align="center">
    <img src="assets/login.png" style="width: 100px; max-width: 100px; height: auto; margin-right: 10px;" />
    <img src="assets/signup.png" style="width: 100px; max-width: 100px; height: auto; margin-right: 10px;" />
    <img src="assets/search.png" style="width: 100px; max-width: 100px; height: auto;" />
  </p>
</div>

<div style="max-width: 360px; margin: 0 auto;">
  <p align="center">
    <img src="assets/moscow.png" style="width: 100px; max-width: 100px; height: auto; margin-right: 10px;" />
    <img src="assets/helsinki.png" style="width: 100px; max-width: 100px; height: auto; margin-right: 10px;" />
    <img src="assets/giza.png" style="width: 100px; max-width: 100px; height: auto;" />
  </p>
</div>