import 'package:dio/dio.dart' as dio;
import 'package:flutter/foundation.dart';

class PatientModel {
  final _dioClient = dio.Dio();

  Future<dio.Response?> getPatients() async {
    try {
      dio.Response response = await _dioClient.get(
        'https://cnas2cs.herokuapp.com/patient',
      );

      return response;
    } on dio.DioError catch (e) {
      if (kDebugMode) {
        print(e);
      }
      return e.response;
    }
  }
}
