import 'package:cnas/config/const.dart';
import 'package:cnas/config/size_config.dart';
import 'package:cnas/views/demande.dart';
import 'package:cnas/views/auth/loginView.dart';
import 'package:cnas/views/demande/list_demande_view.dart';
import 'package:cnas/views/proposition/list_proposition_view.dart';
import 'package:cnas/views/reclamation/list_reclamation_view.dart';
import 'package:cnas/views/transport/list_transport_view.dart';
import 'package:cnas/views/transporteur/list_transporteur_view.dart';
import 'package:flutter/material.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _widgets = [
    ListDemande(),
    ListProposition(),
    ListTransporteur(),
    ListTransport(),
  ];

  PageController pageController = PageController();

  int selectedWidgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<SideMenuItem> items = [
      SideMenuItem(
        priority: 0,
        title: 'Les demandes',
        onTap: () => pageController.jumpToPage(0),
        icon: Icon(
          Icons.add_box,
          color: lightRed,
        ),
      ),
      SideMenuItem(
        priority: 1,
        title: 'Les propositions',
        onTap: () => pageController.jumpToPage(1),
        icon: Icon(Icons.description),
      ),
      SideMenuItem(
        priority: 2,
        title: 'Les transporteurs',
        onTap: () => pageController.jumpToPage(2),
        icon: Icon(Icons.person),
      ),
      SideMenuItem(
        priority: 3,
        title: 'Les transports',
        onTap: () => pageController.jumpToPage(3),
        icon: Icon(Icons.local_shipping),
      ),
    ];

    //SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Color(0xFFECF1FD),
      body: Row(
        children: [
          SideMenu(
            title: Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              width: 150,
              height: 150,
              child: Image.asset('assets/images/cnaslogo.png'),
            ),
            //Text("___________\nPortail de la CNAS\n ___________"),
            //Image.asset('assets\images\logo.png'),
            style: SideMenuStyle(
              displayMode: SideMenuDisplayMode.auto,
              decoration: BoxDecoration(),
              openSideMenuWidth: 200,
              compactSideMenuWidth: 40,
              hoverColor: Colors.blue[100],
              selectedColor: Color(0xFF1045F7),
              selectedIconColor: Colors.white,
              unselectedIconColor: Colors.black54,
              backgroundColor: Colors.white,
              selectedTitleTextStyle: TextStyle(color: Colors.white),
              unselectedTitleTextStyle: TextStyle(color: Colors.black54),
              iconSize: 20,
            ),
            items: items,
            controller: pageController,
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.03,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: PageView(
                  controller: pageController,
                  children: _widgets,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
