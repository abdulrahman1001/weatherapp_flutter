import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:weather_app/models/wetherapimodel.dart';

class wether_servies {
  final Dio dio;
  String base_ur = 'https://api.weatherapi.com/v1';
  String api_key = '4d3f6ac683344847a73153727240401&q';
  wether_servies(this.dio);
  Future<wether_model?>  get_current_wether({required String cityname}) async {
    try {
      Response response =
          await dio.get('http://api.weatherapi.com/v1/forecast.json?key=4d3f6ac683344847a73153727240401&q=$cityname');
      wether_model model = wether_model.fromJson(response.data);

      return model;
    } on DioException catch (e) {
      final String message = e.response?.data['error']['message'] ?? 'error';
      throw Exception(message);
    } catch (e) {
      log(e.toString());
      throw Exception(e.toString());
    }
  }
}
