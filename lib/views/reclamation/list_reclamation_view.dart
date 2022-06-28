import 'package:cnas/config/const.dart';
import 'package:cnas/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListReclamation extends StatefulWidget {
  const ListReclamation({Key? key}) : super(key: key);

  @override
  State<ListReclamation> createState() => _ListReclamationState();
}

class _ListReclamationState extends State<ListReclamation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SizedBox(
            width: SizeConfig.screenWidth * 0.8,
            child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("IdReclamation",style: GoogleFonts.poppins(fontSize: 20 , fontWeight: FontWeight.w500 ,color: Color(0xFF1F2938)))),
                      Container(alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("Titre" ,style: GoogleFonts.poppins(fontSize: 20 , fontWeight: FontWeight.w500 ,color: Color(0xFF1F2938)))),
                      Container(alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("Déposé à",style: GoogleFonts.poppins(fontSize: 20 , fontWeight: FontWeight.w500 ,color: Color(0xFF1F2938)))),
                      Container(alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("Statut",style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w500 ,color: Color(0xFF1F2938)))),
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white ,
                        borderRadius: BorderRadius.circular(SizeConfig.screenHeight * 0.02)
                    ),
                    clipBehavior: Clip.antiAlias,
                    height: SizeConfig.screenHeight * 0.9,
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) => Container(
                          child: Container(
                            alignment: Alignment.center ,
                            decoration: BoxDecoration(
                                border:  Border(
                                    bottom: BorderSide(width: 1 ,color:  Color(0xFFF6F6F6))
                                )
                            ),
                            height: SizeConfig.screenHeight * 0.08,
                            child: Row(
                              children: [
                                Container( alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("IdReclamation",style: GoogleFonts.poppins(fontSize: 14 , fontWeight: FontWeight.w500 ,color: Color(0xFF767676)))),
                                Container(alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("Titre",style: GoogleFonts.poppins(fontSize: 14 , fontWeight: FontWeight.w500 ,color: Color(0xFF767676)))),
                                Container(alignment: Alignment.center,width : SizeConfig.screenWidth * (0.8/4),child: Text("Déposé à",style: GoogleFonts.poppins(fontSize: 14 , fontWeight: FontWeight.w500 ,color: Color(0xFF767676)))),
                                Container(alignment: Alignment.center,width: SizeConfig.screenWidth * (0.8/4) ,color: lightYellow, child:
                                Text("Statut",style: GoogleFonts.poppins(fontSize: 14 , fontWeight: FontWeight.w500 ,color: yellow) ,)),
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
