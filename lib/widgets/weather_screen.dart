import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:test_3/cubits/weather_cubit/weather_cubit.dart';
import 'package:test_3/models/weather_model.dart';

class WeatherScreenBody extends StatelessWidget {
  WeatherScreenBody({super.key});

  WeatherModel? weatherModel;

  String formattedDate = DateFormat('kk:mm').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff233D78),
              Color(0xff172d77),
              Color(0xff83C8EF),
              Color(0xffC6EAFA),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CircleAvatar(
                      backgroundColor: Colors.black26,
                      child: Icon(Icons.location_on)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 100),
                  child: Text(
                   BlocProvider.of<WeatherCubit>(context)
                       .weatherModel!.location,
                    style: const TextStyle(fontSize: 35),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'SearchPage');
                    },
                    child: const Icon(
                      Icons.search,
                      size: 45,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(top: 40, right: 180),
              child: Text(
                'Today\'s Report ',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 150,
              width: 80,
              child: Image.network(
                  'https:${BlocProvider.of<WeatherCubit>(context).weatherModel!.weatherConditionImage}',
                  fit: BoxFit.fill),
            ),
            Center(
              child: Text(
                'it\'s ${BlocProvider.of<WeatherCubit>(context).weatherModel!.weatherCondition}',
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                '${BlocProvider.of<WeatherCubit>(context).weatherModel!.temperture.round()}°',
                style: const TextStyle(fontSize: 90, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 90),
              child: Text(
                'Last updated  $formattedDate',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage('assets/wind speed.png'),
                        width: 35,
                        height: 40,
                      ),
                      Text(
                        'wind speed : ${BlocProvider.of<WeatherCubit>(context).weatherModel!.windSpeed.round()}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Image(
                        image: AssetImage('assets/humidity.png'),
                        width: 35,
                        height: 40,
                      ),
                      Text(
                        'humidity : ${BlocProvider.of<WeatherCubit>(context).weatherModel!.humidity}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      const Image(
                        image: AssetImage('assets/max temp.png'),
                        width: 35,
                        height: 40,
                      ),
                      Text(
                        'maxTemp : ${BlocProvider.of<WeatherCubit>(context).weatherModel!.maxTemp.round()}',
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Image(
                        image: AssetImage('assets/low temp.png'),
                        width: 35,
                        height: 40,
                      ),
                      Text(
                        'minTemp : ${BlocProvider.of<WeatherCubit>(context).weatherModel!.minTemp.round()}',
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
