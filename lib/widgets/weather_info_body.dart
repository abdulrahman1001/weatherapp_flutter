import 'package:flutter/material.dart';
import 'package:weather_app/copit/copitgetwether/getwhethercubit.dart';
import 'package:weather_app/models/wetherapimodel.dart';

class WeatherInfoBody extends StatelessWidget {
  WeatherInfoBody({Key? key,required this.getwethercubit}) : super(key: key)  ;
  final wether_model getwethercubit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            getwethercubit.city_name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
          const Text(
            '8:00 PM - Monday, 10 May 2021',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                getwethercubit.image,
              ),
               Text(
                '${getwethercubit.temp}°C',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 32,
                ),
              ),
               Column(
                children: [
                  Text(
                    getwethercubit.max_temp.toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    getwethercubit.min_temp.toString(),
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 32,
          ),
           Text(
             getwethercubit.description,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ],
      ),
    );
  }
}
