//home_service.dart 

import 'dart:developer';

import 'package:bootcamp/DB/models/home_model.dart';
import 'package:bootcamp/constants/api_end_points.dart';
import 'package:dio/dio.dart';

Future<List<HomeData>> getHomeData() async{
  try {
    final Response response = await Dio().get(ApiEndPoints.popular);

    if(response.statusCode == 200 || response.statusCode == 201){
      final jsonData = response.data['results'] as List;
      return jsonData.map((json)=>HomeData.fromJson(json)).toList();
    }
    throw Exception('fail to fetch data');
  } catch (e) {
    log('errorrrr$e');
    return [];
  }
}