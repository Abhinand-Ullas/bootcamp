import 'package:bootcamp/DB/models/home_model.dart';
import 'package:flutter/material.dart';

class HeroBanner extends StatelessWidget {
  const HeroBanner({super.key, required List<HomeData> data});

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Container(
          height: screenH * 0.7,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStdWUIGaLV-e3jZxQwPLxtNBpQ-s7sGTJy7NrN8bE0yC2e_UmnrVSXUoEBIMad0kt_Fc0&usqp=CAU',
                  ),
                  fit: BoxFit.cover)),
        ),
        Positioned(
          top: screenH * 0.5,
          left: 0,
          right: 0,
          child: Text("DEADPOOL AND WOLVERINE",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold)),
        )
      ],
    );
  }
}
