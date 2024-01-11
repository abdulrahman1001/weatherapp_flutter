import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/copit/copitgetwether/getwhethercubit.dart';
import 'package:weather_app/models/wetherapimodel.dart';
import 'package:weather_app/servies/weatherservies.dart';

class searchview extends StatefulWidget {
  const searchview({Key? key}) : super(key: key);

  @override
  State<searchview> createState() => _searchviewState();
}

class _searchviewState extends State<searchview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (value) {
              
             var getwether= BlocProvider.of<getwethercubit>(context);
             getwether.getcurrntwether(value: value);
             Navigator.pop(context);
            },
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter a search term',
                labelText: 'search'),
          ),
        ),
      ),
    );
  }
}
