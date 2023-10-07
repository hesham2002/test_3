import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_3/cubits/weather_cubit/weather_cubit.dart';


class SearchBody extends StatelessWidget {


   SearchBody({super.key});
   void Function(String)? onChanged;
   TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
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
      child: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Text(
            'Enter Your City',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 70,
          ),
          TextField(
            controller: controller,
            onChanged: onChanged,

            onSubmitted: (value) async {

              BlocProvider.of<WeatherCubit>(context).getCurrentWeather(location: value);
              Navigator.pushNamed(context, 'WeatherInfoDetails');

            },
            onTapOutside: (event) =>
                FocusManager.instance.primaryFocus?.unfocus(),
            style: TextStyle(fontSize: 25),
            decoration: InputDecoration(
              filled: true,
              labelStyle: TextStyle(color: Colors.black, fontSize: 30),
              fillColor: Colors.white,
              hintText: 'Enter the city',
              hintStyle: TextStyle(
                fontSize: 25,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              suffix: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
