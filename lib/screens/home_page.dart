import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/cubits/weather_cubit/weather_cubit.dart';
import 'package:test_3/models/weather_model.dart';
import 'package:test_3/widgets/home_screen_body.dart';
import 'package:test_3/widgets/weather_screen.dart';



class HomePage extends StatelessWidget {
   HomePage({super.key});
WeatherModel? weatherModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<WeatherCubit,WeatherState>(builder: (context, state) {
        if(state is WeatherInitial)
          {
           return HomeScreenBody();
          }
        else if(state is WeatherLoading)
        {
         return Center(
           child: CircularProgressIndicator(),
         );
        }
        else if(state is WeatherSuccess)
        {
         weatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel;
          return WeatherScreenBody();
        }
         else
         {
           return Center(
             child: Text('there is an error ,try later'),
           );
         }

      },
      ),
    );
  }
}
