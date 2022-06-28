import 'package:cnas/config/const.dart';
import 'package:cnas/config/size_config.dart';
import 'package:cnas/data%20classes/Demande.dart';
import 'package:cnas/models/demande_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cnas/config/size_config.dart';
import 'package:dio/dio.dart' as dio;

class DetailDemande extends StatefulWidget {
  const DetailDemande({Key? key}) : super(key: key);

  @override
  State<DetailDemande> createState() => _DetailDemandeState();
}

class _DetailDemandeState extends State<DetailDemande> {
  // List<Demande> listDemande = [];
  // bool isLoading = true;

  // @override
  // void initState() {
  //   getDemande();
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    //Size screenWidth = MediaQuery.of(context).size.width as Size;
    //Size heightscreen = MediaQuery.of(context).size.height as Size;

    return Scaffold(
        backgroundColor: Color(0xFFECF1FD),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Container(
                        //padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * 0.02)),
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02),
                              child: Text('Demande N° xxxxxx ',
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black)),
                            ),
                            Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * 0.1,
                              width: MediaQuery.of(context).size.width * 0.1,
                              color: Colors.lightGreen,
                              child: Text(
                                'ETAT',
                                style: GoogleFonts.poppins(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green),
                              ),
                            )
                          ],
                        )),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.05,
                    ),
                    Container(
                        //padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.height * 0.02)),
                        clipBehavior: Clip.antiAlias,
                        height: MediaQuery.of(context).size.height * 0.2,
                        width: MediaQuery.of(context).size.width * 0.35,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02,
                                  right:
                                      MediaQuery.of(context).size.width * 0.02),
                              alignment: Alignment.centerLeft,
                              child: Text("Adresse de l'assuré : 213457 ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02,
                                  right:
                                      MediaQuery.of(context).size.width * 0.02),
                              alignment: Alignment.centerLeft,
                              child: Text("Adresse de l'hopital : 213457 ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.02,
                                  right:
                                      MediaQuery.of(context).size.width * 0.02),
                              alignment: Alignment.centerLeft,
                              child: Text("Déscription : 213457 ",
                                  style: GoogleFonts.poppins(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.black)),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.02)),
                    clipBehavior: Clip.antiAlias,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.height * 0.45,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.15,
                                  child:
                                      Image.asset('assets/images/assure.jpg'),
                                ),
                                Container(
                                  child: Text('SAADANI \nMohammed ',
                                      style: GoogleFonts.poppins(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.black87)),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          alignment: Alignment.centerLeft,
                          child: Text('N° de sécurité sociale : 213457 ',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          alignment: Alignment.centerLeft,
                          child: Text('Date de naissance : 14/06/1966',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          alignment: Alignment.centerLeft,
                          child: Text('Wilaya : Alger',
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.02)),
                    clipBehavior: Clip.antiAlias,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.width * 0.35,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          child: Text('Calcul de kilométrage',
                              style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xFF1045F7))),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.02,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Distance de siège au domicile est : XX KM",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Distance de domicile à l'hôpital est : XX KM",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              left: MediaQuery.of(context).size.width * 0.02,
                              right: MediaQuery.of(context).size.width * 0.02),
                          alignment: Alignment.centerLeft,
                          child: Text(
                              "Distance de l'hôpital au siège est : XX KM",
                              style: GoogleFonts.poppins(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.05,
                        ),
                        ElevatedButton.icon(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Color(0xFF1045F7)),
                              padding: MaterialStateProperty.all(EdgeInsets.all(
                                  MediaQuery.of(context).size.height * 0.03)),
                              textStyle: MaterialStateProperty.all(
                                  TextStyle(fontSize: 15))),
                          onPressed: () {},
                          icon: Icon(Icons.add),
                          label: Text("Modifier l'état de la demande"),
                        ),
                      ],
                    )),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                            MediaQuery.of(context).size.height * 0.02)),
                    clipBehavior: Clip.antiAlias,
                    height: MediaQuery.of(context).size.height * 0.35,
                    width: MediaQuery.of(context).size.height * 0.45,
                    child: Text("         map")),
              ],
            )
          ],
        ));
  }

  // Future<void> getDemande() async {
  //   final demandeModel = DemandeModel();

  //   dio.Response? response = await demandeModel.getDemande();

  //   if (response != null) {
  //     print(response.data);
  //     for (var i in response.data) {
  //       var demande = Demande.fromJson(i);
  //       listDemande.add(demande);
  //     }
  //   }

  //   setState(() {
  //     isLoading = false;
  //   });
  // }

  // getStateColor(String state) {
  //   switch (state) {
  //     case 'en cours':
  //       return yellow;
  //     case 'validé':
  //       return green;
  //     case 'accepté':
  //       return blue;
  //     case 'refusé':
  //       return red;
  //   }
  // }

  // getStateBackColor(String state) {
  //   switch (state) {
  //     case 'en cours':
  //       return lightYellow;
  //     case 'validé':
  //       return lightGreen;
  //     case 'accepté':
  //       return lightBlue;
  //     case 'refusé':
  //       return lightRed;
  //   }
  // }
}
