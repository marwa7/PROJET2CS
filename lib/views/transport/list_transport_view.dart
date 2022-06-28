import 'package:cnas/config/const.dart';
import 'package:cnas/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListTransport extends StatefulWidget {
  const ListTransport({Key? key}) : super(key: key);

  @override
  State<ListTransport> createState() => _ListTransportState();
}

class _ListTransportState extends State<ListTransport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(children: [
              SizedBox(
                height: 5.0,
              ),
              Text("Liste des transports sanitaires",
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
                      width: MediaQuery.of(context).size.width * (0.7 / 5),
                      child: Text("N° de transport",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2938)))),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * (0.7 / 5),
                      child: Text("Transporteur",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2938)))),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * (0.7 / 5),
                      child: Text("Début",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2938)))),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * (0.7 / 5),
                      child: Text("Fin",
                          style: GoogleFonts.poppins(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF1F2938)))),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * (0.7 / 5),
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
                  itemCount: 20,
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
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("IdTransport",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF767676)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("ETS",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF767676)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("Date Debut",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF767676)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            child: Text("Date fin",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF767676)))),
                        Container(
                            alignment: Alignment.center,
                            width:
                                MediaQuery.of(context).size.width * (0.7 / 5),
                            color: lightYellow,
                            child: Text(
                              "Statut",
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
}
