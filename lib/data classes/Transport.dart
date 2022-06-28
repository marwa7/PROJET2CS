import 'package:cnas/data%20classes/Proposition.dart';

import 'Demande.dart';
import 'ETS.dart';

class Transport{
  Transport({
    required this.idTransport,
    required this.demande,
    required this.proposition,
    required this.ets,


  });
  late final String idTransport;
  late final Demande demande;
  late final Propostion proposition;
  late final ETS ets;



  Transport.fromJson(Map<String, dynamic> json){
    idTransport  =  json['id_transport'];
    demande = json['demande'];
    proposition = json['proposition'];
    ets = json['ets'];

  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_transport'] = idTransport;
    _data['demande'] = demande;
    _data['proposition'] = proposition;
    _data['ets'] = ets;


    return _data;
  }
}