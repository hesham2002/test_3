import 'package:flutter/material.dart';

import '../models/weather_model.dart';


class WeatherInfoDetails extends StatelessWidget {
    const WeatherInfoDetails({super.key, required this.weatherModel});
final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: Container(
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
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                       Row(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: CircleAvatar(
                                backgroundColor: Colors.black26,
                                child: Icon(Icons.location_on)),
                          ),
                          Text(
                            weatherModel.location,
                            style: const TextStyle(fontSize: 35),
                          ),
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 40, right: 180),
                        child: Text(
                          'Today\'s Report ',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(
                          height: 200,
                          width: 200,
                          child:
                              Image(image: AssetImage('assets/weather.png'))),
                      const Text(
                        'It\'s Cloudy',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        '25°',
                        style: TextStyle(
                            fontSize: 80, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Last updated  20:00 ',
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/wind speed.png'),
                                  width: 35,
                                  height: 40,
                                ),
                                Text(
                                  'wind speed :',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Image(
                                  image: AssetImage('assets/humidity.png'),
                                  width: 35,
                                  height: 40,
                                ),
                                Text(
                                  'humidity :',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Image(
                                  image: AssetImage('assets/max temp.png'),
                                  width: 35,
                                  height: 40,
                                ),
                                Text(
                                  'maxTemp :',
                                  style: TextStyle(fontSize: 20),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Image(
                                  image: AssetImage('assets/low temp.png'),
                                  width: 35,
                                  height: 40,
                                ),
                                Text(
                                  'minTemp :',
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ));
  }
}
