import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/models/wetherapimodel.dart';

class wether_servies {
  final Dio dio;
  String base_ur = 'https://api.weatherapi.com/v1';
  String api_key = '4d3f6ac683344847a73153727240401&q';
  wether_servies({required this.dio});
  Future<wether_model> get_current_wether({required String cityname}) async {
    Response response =
        await dio.get('$base_ur/forecast.json?key=$api_key=$cityname=1');
    wether_model model = wether_model.fromJson(response.data);
    return model;
  }
}
