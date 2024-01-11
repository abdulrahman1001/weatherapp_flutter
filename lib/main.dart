import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/copit/copitgetwether/getwhethercubit.dart';
import 'package:weather_app/views/home_view.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => getwethercubit(),
      child:const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView( ),
      ),
    );
  }
}
