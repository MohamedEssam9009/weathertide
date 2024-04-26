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
      child: const CustomMaterialApp(),
    );
  }
}

class CustomMaterialApp extends StatelessWidget {
  const CustomMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          primarySwatch: getThemeColor(BlocProvider.of<GetWeatherCubit>(context)
              .weatherModel
              ?.weatherCondition)),
      home: const HomeView(),
    );
  }
}

MaterialColor getThemeColor(String? condition) {
  if (condition == null) {
    return Colors.blue;
  }

  switch (condition) {
    case 'Sunny':
      return Colors.amber;
    case 'Partly cloudy':
      return Colors.orange;
    case 'cloudy':
      return Colors.grey;
    case 'overcast':
      return Colors.grey;
    case 'mist':
      return Colors.grey;
    case 'patchy rain possible':
      return Colors.deepPurple;
    case 'patchy snow possible':
      return Colors.blue;
    case 'patchy sleet possible':
      return Colors.blue;
    case 'patchy freezing drizzle possible':
      return Colors.blue;
    case 'thundery outbreaks possible':
      return Colors.deepPurple;
    case 'blowing snow':
      return Colors.blue;
    case 'blizzard':
      return Colors.blue;
    case 'fog':
      return Colors.grey;
    case 'freezing fog':
      return Colors.grey;
    case 'patchy light drizzle':
      return Colors.grey;
    case 'light drizzle':
      return Colors.grey;
    case 'freezing drizzle':
      return Colors.blue;
    case 'heavy freezing drizzle':
      return Colors.blue;
    case 'patchy light rain':
      return Colors.cyan;
    case 'light rain':
      return Colors.lightBlue;
    case 'moderate rain at times':
      return Colors.deepPurple;
    case 'Moderate rain':
      return Colors.cyan;
    case 'heavy rain at times':
      return Colors.deepPurple;
    case 'heavy rain':
      return Colors.teal;
    case 'light freezing rain':
      return Colors.blue;
    case 'moderate or heavy freezing rain':
      return Colors.blue;
    case 'light sleet':
      return Colors.blue;
    case 'moderate or heavy sleet':
      return Colors.blue;
    case 'patchy light snow':
      return Colors.blue;
    case 'light snow':
      return Colors.blue;
    case 'patchy moderate snow':
      return Colors.blue;
    case 'moderate snow':
      return Colors.blue;
    case 'patchy heavy snow':
      return Colors.blue;
    case 'heavy snow':
      return Colors.blue;
    case 'ice pellets':
      return Colors.blue;
    case 'light rain shower':
      return Colors.grey;
    case 'moderate or heavy rain shower':
      return Colors.deepPurple;
    case 'torrential rain shower':
      return Colors.deepPurple;
    case 'light sleet showers':
      return Colors.blue;
    case 'moderate or heavy sleet showers':
      return Colors.blue;
    case 'light snow showers':
      return Colors.blue;
    case 'moderate or heavy snow showers':
      return Colors.blue;
    case 'light showers of ice pellets':
      return Colors.blue;
    case 'moderate or heavy showers of ice pellets':
      return Colors.blue;
    case 'patchy light rain with thunder':
      return Colors.deepPurple;
    case 'moderate or heavy rain with thunder':
      return Colors.deepPurple;
    case 'patchy light snow with thunder':
      return Colors.blue;
    case 'moderate or heavy snow with thunder':
      return Colors.blue;
    default:
      return Colors.blueGrey; // Default color for unknown conditions
  }
}
