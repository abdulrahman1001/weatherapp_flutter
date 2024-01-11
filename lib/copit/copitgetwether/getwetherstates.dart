import 'package:weather_app/copit/copitgetwether/getwhethercubit.dart';
import 'package:weather_app/models/wetherapimodel.dart';

class wetherstate {}

class initialState extends wetherstate {}

class loddwetherstate extends wetherstate {
  final wether_model getwethercubit;
  loddwetherstate( this.getwethercubit);
}

class wetherfalurestate extends wetherstate {}
