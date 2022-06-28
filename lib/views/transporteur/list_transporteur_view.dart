import 'package:cnas/config/const.dart';
import 'package:cnas/config/size_config.dart';
import 'package:cnas/data%20classes/ETS.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cnas/config/size_config.dart';
import 'package:dio/dio.dart' as dio;

import '../../models/transporeteur_model.dart';

class ListTransporteur extends StatefulWidget {
  const ListTransporteur({Key? key}) : super(key: key);

  @override
  State<ListTransporteur> createState() => _ListTransporteurState();
}

class _ListTransporteurState extends State<ListTransporteur> {
  List<ETS> listETS = [];
  bool isLoading = true;

  @override
  void initState() {
    getETS();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    //Size screenWidth = MediaQuery.of(context).size.width as Size;
    //Size heightscreen = MediaQuery.of(context).size.height as Size;

    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: isLoading
              ? CircularProgressIndicator()
              : SizedBox(
                  width: MediaQuery.of(context).size.width * 0.7,
                  child: Column(children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Text("Liste des entreprises de transport sanitaire",
                        style: GoogleFonts.poppins(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF5F5050))),
                    SizedBox(
                      height: 50.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("N° de transporteur",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("Nom",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("Téléphone",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("Adresse",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                      ],
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height * 0.02)),
                      clipBehavior: Clip.antiAlias,
                      height: MediaQuery.of(context).size.height * 0.7,
                      child: ListView.builder(
                        itemCount: listETS.length,
                        itemBuilder: (context, index) => Container(
                            child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      width: 1, color: Color(0xFFF6F6F6)))),
                          height: MediaQuery.of(context).size.height * 0.08,
                          child: Row(
                            children: [
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  child: Text(listETS[index].idEts,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  child: Text(listETS[index].nom,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  child: Text(listETS[index].phone,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  child: Text(listETS[index].adresse,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ]),
                ),
        ));
  }

  Future<void> getETS() async {
    final etsModel = ETSModel();

    dio.Response? response = await etsModel.getETS();

    if (response != null) {
      print(response.data);
      for (var i in response.data) {
        var ets = ETS.fromJson(i);
        listETS.add(ets);
      }
    }

    setState(() {
      isLoading = false;
    });
  }
}
