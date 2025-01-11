import 'dart:developer';

import 'package:dio/dio.dart';

Future getData() async {
  try {
    final Response response = await Dio().get(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=c27f4f93f94a49f6ff46abc0f626c227');
    if (response.statusCode == 200 || response.statusCode == 201) {
      log(response.data.toString());
    }
  } catch (e) {
    log(e.toString());
  }
}
