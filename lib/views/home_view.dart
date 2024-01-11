import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/copit/copitgetwether/getwetherstates.dart';
import 'package:weather_app/copit/copitgetwether/getwhethercubit.dart';
import 'package:weather_app/models/wetherapimodel.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/no_weather_body.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key, }) : super(key: key);
 

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Weather App'),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return searchview();
                }));
              },
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: BlocBuilder<getwethercubit, wetherstate>(
          builder: (context, state) {
            if (state is initialState) {
              return NoWeatherBody();
            } else if (state is loddwetherstate) {
              state.getwethercubit;
              return WeatherInfoBody(
                getwethercubit: state.getwethercubit,
              );
            } else {
              return const Center(
                child: Text('error'),
              );
            }
          },
        ));
  }
}
