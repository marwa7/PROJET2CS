import 'package:cnas/config/const.dart';
import 'package:cnas/data%20classes/Proposition.dart';
import 'package:flutter/material.dart';
import '../../models/proposition_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dio/dio.dart' as dio;

class ListProposition extends StatefulWidget {
  const ListProposition({Key? key}) : super(key: key);

  @override
  State<ListProposition> createState() => _ListPropositionState();
}

class _ListPropositionState extends State<ListProposition> {
  List<Propostion> listproposition = [];
  bool isLoading = true;

  @override
  void initState() {
    getproposition();
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
                    Text("Liste des propositions de transport sanitaire",
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
                            child: Text("N° de la proposition",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("N° de la demande",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("Déposé à",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 4),
                            child: Text("Statut",
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
                        itemCount: listproposition.length,
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
                                  child: Text(
                                      listproposition[index].idProposition,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  child: Text(listproposition[index].idDemande,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  child: Text(
                                      listproposition[index].dateCreation,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFF767676)))),
                              Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width *
                                      (0.7 / 4),
                                  color: lightYellow,
                                  child: Text(
                                    listproposition[index].etat,
                                    style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: yellow),
                                  )),
                            ],
                          ),
                        )),
                      ),
                    ),
                  ]),
                ),
        ));
  }

  Future<void> getproposition() async {
    final propositionModel = PropositionModel();

    dio.Response? response = await propositionModel.getproposition();

    if (response != null) {
      print(response.data);
      for (var i in response.data) {
        var proposition = Propostion.fromJson(i);
        listproposition.add(proposition);
      }
    }

    setState(() {
      isLoading = false;
    });
  }

  getStateColor(String state) {
    switch (state) {
      case 'en cours':
        return yellow;
      case 'valide':
        return green;
      case 'accepté':
        return blue;
      case 'refusé':
        return red;
    }
  }

  getStateBackColor(String state) {
    switch (state) {
      case 'en cours':
        return lightYellow;
      case 'valide':
        return lightGreen;
      case 'accepté':
        return lightBlue;
      case 'refusé':
        return lightRed;
    }
  }
}
