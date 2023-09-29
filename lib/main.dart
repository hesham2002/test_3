import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:test_3/models/weather_model.dart';
import 'package:test_3/screens/home_page.dart';
import 'package:test_3/screens/search_page.dart';
import 'package:test_3/screens/weather_info_details.dart';
import 'package:test_3/widgets/search_screen_body.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: MaterialApp(

        routes:
        {
          'HomePage': (context) => const HomePage(),
          'SearchPage': (context) => SearchPage(),
          'WeatherInfoDetails': (context) => WeatherInfoDetails(weatherModel:weatherModel!),
        },

        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
