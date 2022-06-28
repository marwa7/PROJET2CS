import 'dart:convert';

import 'package:cnas/config/base_api.dart';
import 'package:cnas/data%20classes/ETS.dart';
import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';

class ETSModel {
  final _dioClient = dio.Dio();

  //depending on the @has_phone , @loginParams sould be phone or email, 0 for email, 1 for phone
  Future<dio.Response?> getETS() async {
    try {
      dio.Response response = await _dioClient.get(
        transporteurUrl,
        options: dio.Options(
          contentType: "application/json",
        ),
      );

      if (kDebugMode) {
        print(response.data);
      }

      return response;
    } on dio.DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return e.response;
    }
  }
}
