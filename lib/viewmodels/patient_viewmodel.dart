import 'package:cnas/models/patient_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:dio/dio.dart' as dio;

class PatientViewModel extends ChangeNotifier {
  final model = PatientModel();

  Future<void> getPatients() async {
    var userData;

    dio.Response? profileResponse = await model.getPatients();

    if (profileResponse == null) {
      return;
    }

    if (profileResponse.statusCode == 200) {
      userData = profileResponse.data;
      print(userData);
    }

    return;
  }
}
