import 'package:flutter/material.dart';

import '../widgets/no_weather_body.dart';
import '../widgets/weather_info_body.dart';
import 'search_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather App'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const SearchView();
                  },
                ),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: weatherModel == null
          ? const NoWeatherBody()
          : const WeatherInfoBody(),
    );
  }
}

 // 1. Create States 
 // 2. Create Cubit 
 // 3. Create Function 
 // 4. Provide Cubit
 // 5. integrate Cubit
 // 6. Trigger Cubit
