//row_posts.dart
import 'package:bootcamp/DB/models/home_model.dart';
import 'package:bootcamp/constants/colors.dart';
import 'package:bootcamp/constants/constants.dart';
import 'package:flutter/material.dart';


class RowPosts extends StatelessWidget {
  final String title;
  final List<HomeData> data;
  const RowPosts({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kHeight_5,
          Text(
            title,
            style: TextStyle(color: MyColors.white, fontSize: 20),
          ),
          kHeight_5,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: List.generate(
                10,
                (index) => Container(
                  height: 180,
                  width: 120,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://image.tmdb.org/t/p/w500/${data[index].posterPath}')),
                      borderRadius: BorderRadius.circular(5)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}