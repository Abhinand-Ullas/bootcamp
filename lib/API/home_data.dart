import 'dart:developer';

import 'package:dio/dio.dart';

Future getData() async {
  try {
    final Response response = await Dio().get(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=fc9324935a273b768eaf7ed8ca8c4444');
    if (response.statusCode == 200 || response.statusCode == 201) {
      log(response.data.toString());
    }
  } catch (e) {
    log(e.toString());
  }
}
