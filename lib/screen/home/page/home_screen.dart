import 'dart:math';

import 'package:bootcamp/API/home_data.dart';
import 'package:bootcamp/screen/home/page/demo_screen.dart';
import 'package:bootcamp/screen/home/widget/hero_banner.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      HeroBanner(),
      ElevatedButton(
          onPressed: () async {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DemoScreen()));
            await Future.delayed(Duration(seconds: 3));
            getData();
            print("hi");
          },
          child: Text("click here"))
    ]));
  }
}
