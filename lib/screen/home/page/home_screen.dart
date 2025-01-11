import 'package:bootcamp/API/home_service.dart';
import 'package:bootcamp/DB/models/home_model.dart';
import 'package:bootcamp/constants/colors.dart';
import 'package:bootcamp/screen/home/widget/grid_post.dart';
import 'package:bootcamp/screen/home/widget/hero_banner.dart';
import 'package:bootcamp/screen/home/widget/row_posts.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
 const HomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: FutureBuilder<List<HomeData>>(
        future: getHomeData(),
        builder: (context, snapshot) {
          if(snapshot.connectionState == ConnectionState.waiting){
            return Center(child: CircularProgressIndicator());
          }else if (snapshot.hasError){
            return Center(child: Text('Error: ${snapshot.error}'),);
          }else if(snapshot.hasData){
            final List<HomeData> data = snapshot.data!;
            return data.isEmpty ? Center(child: Text("Network Issue",
            style: TextStyle(
              color: MyColors.orange
            ),),) : SingleChildScrollView(
          child: Column(
            children: [
              HeroBanner(data: data,),
              RowPosts(data: data,title: 'Top Trending',),
              GridPost(data: data, title: 'For You')
            ],
          ),
        );
          }
          else{
            return Center(
              child: Text('no data available'),
            );
          }
        },
      ),
    );
  }
}