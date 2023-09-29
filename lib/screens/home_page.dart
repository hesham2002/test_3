import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/cubits/get_weather_cubit/get_weather_cubit.dart';


import 'package:test_3/screens/weather_info_details.dart';
import 'package:test_3/widgets/home_screen_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<GetWeatherCubit, GetWeatherState>(
        builder: (context, state) {
          if (state is GetWeatherInitial) {
            return HomeBody();
          } else if (state is GetWeatherSuccsess) {
            return WeatherInfoDetails(
              weatherModel: state.weatherModel,
            );
          } else {
            return Text('ooo error try again');
          }
        },
      ),
    );
  }
}
