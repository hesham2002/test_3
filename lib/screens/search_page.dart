import 'package:flutter/material.dart';
import 'package:test_3/models/weather_model.dart';
import '../widgets/search_screen_body.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SearchBody(),
    );
  }

}
