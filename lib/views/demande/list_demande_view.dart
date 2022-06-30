import 'package:cnas/config/const.dart';
import 'package:cnas/config/size_config.dart';
import 'package:cnas/data%20classes/Demande.dart';
import 'package:cnas/models/demande_model.dart';
import 'package:cnas/views/demande/detail_demande_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cnas/config/size_config.dart';
import 'package:dio/dio.dart' as dio;

class ListDemande extends StatefulWidget {
  const ListDemande({Key? key}) : super(key: key);

  @override
  State<ListDemande> createState() => _ListDemandeState();
}

class _ListDemandeState extends State<ListDemande> {
  List<Demande> listDemande = [];
  bool isLoading = true;

  @override
  void initState() {
    getDemande();
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
                    Text("Liste des demandes de transport sanitaire",
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
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("N° de la demande",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("Ville",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("Déposé à",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("Date limite",
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF1F2938)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
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
                        itemCount: listDemande.length,
                        itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDemande(id: listDemande[index].idDemande ) ));
                          },
                          child: Container(
                              child: Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        width: 1, color: Color(0xFFF6F6F6)))),
                            height: MediaQuery.of(context).size.height * 0.08,
                            child: Row(
                              children: [
                                Container(),
                                Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        (0.7 / 5),
                                    child: Text(listDemande[index].idDemande,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF767676)))),
                                Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        (0.7 / 5),
                                    child: Text(listDemande[index].ville,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF767676)))),
                                Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        (0.7 / 5),
                                    child: Text(listDemande[index].dateCreation,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF767676)))),
                                Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        (0.7 / 5),
                                    child: Text(listDemande[index].dateCreation,
                                        style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFF767676)))),
                                Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width *
                                        (0.7 / 5),
                                    color: getStateBackColor(
                                        listDemande[index].etat),
                                    child: Text(
                                      listDemande[index].etat,
                                      style: GoogleFonts.poppins(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: getStateColor(
                                              listDemande[index].etat)),
                                    )),
                              ],//com
                            ),
                          )),
                        ),
                      ),
                    ),
                  ]),
                ),
        ));
  }

  Future<void> getDemande() async {
    final demandeModel = DemandeModel();

    dio.Response? response = await demandeModel.getDemande();

    if (response != null) {
      for (var i in response.data) {
        if (i != null) {
          var demande = Demande.fromJson(i);
          listDemande.add(demande);
        }
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
      case 'accepte':
        return blue;
      case 'refuse':
        return red;
    }
  }

  getStateBackColor(String state) {
    switch (state) {
      case 'en cours':
        return lightYellow;
      case 'valide':
        return lightGreen;
      case 'accepte':
        return lightBlue;
      case 'refuse':
        return lightRed;
    }
  }
}
