import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/copit/copitgetwether/getwetherstates.dart';
import 'package:weather_app/models/wetherapimodel.dart';
import 'package:weather_app/servies/weatherservies.dart';
import 'package:weather_app/views/search_view.dart';

class getwethercubit extends Cubit<wetherstate> {
  getwethercubit() : super(initialState());
  getcurrntwether({required String value}) async {
    try {
  wether_model? model =
      await wether_servies(Dio()).get_current_wether(cityname: value);
  emit(loddwetherstate(model!));
}  catch (e) {
  emit(wetherfalurestate());
}
  }
}
