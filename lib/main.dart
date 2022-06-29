import 'dart:js';

import 'package:cnas/config/generale_vars.dart';
import 'package:cnas/viewmodels/patient_viewmodel.dart';
import 'package:cnas/views/home.dart';
import 'package:cnas/views/proposition/detail_proposition.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cnas/viewmodels/auth/login_viewmodel.dart';
import 'views/auth/loginView.dart';
import 'package:cnas/views/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cnas/config/size_config.dart';
import 'views/transporteur/list_transporteur_view.dart';
import 'views/proposition/list_proposition_view.dart';
import 'package:cnas/views/demande.dart';
import 'views/transport/list_transport_view.dart';
import 'views/demande/detail_demande_view.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PatientViewModel()),
        ChangeNotifierProvider(create: (context) => LoginViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var materialApp = MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: mainNavigatorKey,
      routes: {
        '/': (context) => DetailProposition(),
      },
      initialRoute: '/',
    );
    return materialApp;
  }
}
