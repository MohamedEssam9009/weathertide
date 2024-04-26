import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false, primarySwatch: getThemeColor()),
        home: const HomeView(),
      ),
    );
  }

  MaterialColor getThemeColor(String condition) {
    switch (condition) {
      case 'Sunny':
        return Colors.orange;
      case 'Clear':
        return Colors.yellow;
      case 'Partly cloudy':
        return Colors.lightBlue;
      case 'Cloudy':
        return Colors.grey;
      case 'Overcast':
        return Colors.blueGrey;
      case 'Mist':
        return Colors.indigo;
      case 'Patchy rain possible':
      case 'Patchy snow possible':
      case 'Patchy sleet possible':
      case 'Patchy freezing drizzle possible':
      case 'Thundery outbreaks possible':
        return Colors.deepPurple;
      case 'Blowing snow':
      case 'Blizzard':
      case 'Fog':
        return Colors.grey;
      case 'Freezing fog':
        return Colors.grey;
      case 'Patchy light drizzle':
        return Colors.lightBlue;
      case 'Light drizzle':
        return Colors.lightBlue;
      case 'Freezing drizzle':
        return Colors.lightBlue;
      case 'Heavy freezing drizzle':
        return Colors.lightBlue;
      case 'Patchy light rain':
        return Colors.lightBlue;
      case 'Light rain':
        return Colors.lightBlue;
      case 'Moderate rain at times':
        return Colors.lightBlue;
      case 'Moderate rain':
        return Colors.lightBlue;
      case 'Heavy rain at times':
        return Colors.lightBlue;
      case 'Heavy rain':
        return Colors.lightBlue;
      case 'Light freezing rain':
        return Colors.lightBlue;
      case 'Moderate or heavy freezing rain':
        return Colors.lightBlue;
      case 'Light sleet':
      case 'Moderate or heavy sleet':
      case 'Patchy light snow':
      case 'Light snow':
      case 'Patchy moderate snow':
      case 'Moderate snow':
      case 'Patchy heavy snow':
      case 'Heavy snow':
      case 'Ice pellets':
      case 'Light rain shower':
        return Colors.lightBlue;
      case 'Moderate or heavy rain shower':
        return Colors.lightBlue;
      case 'Torrential rain shower':
        return Colors.lightBlue;
      case 'Light sleet showers':
      case 'Moderate or heavy sleet showers':
      case 'Light snow showers':
      case 'Moderate or heavy snow showers':
      case 'Light showers of ice pellets':
      case 'Moderate or heavy showers of ice pellets':
      case 'Patchy light rain with thunder':
        return Colors.deepPurple;
      case 'Moderate or heavy rain with thunder':
        return Colors.deepPurple;
      case 'Patchy light snow with thunder':
        return Colors.deepPurple;
      case 'Moderate or heavy snow with thunder':
        return Colors.deepPurple;
      default:
        return Colors.grey;
    }
  }
}
