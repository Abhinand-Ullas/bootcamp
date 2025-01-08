import 'package:bootcamp/screen/home/widget/hero_banner.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          HeroBanner()
        ]
      )
    );
  }
}
