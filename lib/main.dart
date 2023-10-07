import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/cubits/weather_cubit/weather_cubit.dart';
import 'package:test_3/models/weather_model.dart';
import 'package:test_3/screens/home_page.dart';
import 'package:test_3/screens/search_page.dart';
import 'package:test_3/screens/weather_info_details.dart';


void main() {
  runApp(BlocProvider(
      create: (context) => WeatherCubit(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'HomePage': (context) => HomePage(),
        'SearchPage': (context) => SearchPage(),
        'WeatherInfoDetails': (context) => WeatherInfoDetails(),
      },
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
