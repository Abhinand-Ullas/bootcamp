import 'package:bootcamp/DB/models/home_model.dart';
import 'package:bootcamp/constants/colors.dart';
import 'package:bootcamp/constants/constants.dart';
import 'package:flutter/material.dart';


class GridPost extends StatelessWidget {
  final List<HomeData> data;
  final String title;
  const GridPost({super.key, required this.data, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(color: MyColors.white, fontSize: 20),
          ),
          kHeight_5,
          GridView.count(
            padding: EdgeInsets.all(0),
            childAspectRatio: .5,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
            children: List.generate(
              data.length,
              (index) => Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://image.tmdb.org/t/p/w500/${data[index].posterPath}',
                        ),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          )
        ],
      ),
    );
  }
}