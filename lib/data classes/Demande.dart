import 'package:cnas/data%20classes/Patient.dart';

class Demande {
  Demande(
      {required this.idDemande,
      required this.patient,
      required this.ville,
      required this.dateCreation,
      required this.etat,
        required this.description ,
        required this.dateValidation,
      required this.dateDebut,
      required this.dateFin,
      required this.x_pat,
      required this.y_pat,
      required this.x_hop,
      required this.y_hop,
      required this.adresse_hop});
  late final String idDemande;
  late final Patient? patient;
  late final String ville;
  late final String dateCreation;
  late final String etat;
  late final String description;
  late final String? dateValidation;
  late final String dateDebut;
  late final String dateFin;
  late final int x_pat;
  late final int y_pat;
  late final int x_hop;
  late final int y_hop;
  late final String adresse_hop;

  Demande.fromJson(Map<String, dynamic> json) {
    idDemande = json['id_demande'];
    patient = Patient.fromJson(json['patient']);
    ville = json['ville'];
    dateCreation = json['date_creation'];
    etat = json['etat'];
    description = json['description'];
    dateValidation = json['date_validation'];
    dateDebut = json['date_debut'];
    dateFin = json['date_fin'];
    x_pat = json['x_pat'];
    y_pat = json['y_pat'];
    x_hop = json['x_hop'];
    y_hop = json['y_hop'];
    adresse_hop = json['adresse_hop'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_demande'] = idDemande;
    _data['patient'] = patient;
    _data['ville'] = ville;
    _data['date_creation'] = dateCreation;
    _data['etat'] = etat;
    _data['description'] = description;
    _data['date_validation'] = dateValidation;
    _data['date_debut'] = dateDebut;
    _data['date_fin'] = dateFin;
    _data['x_pat'] = x_pat;
    _data['y_pat'] = y_pat;
    _data['x_hop'] = x_hop;
    _data['y_hop'] = y_hop;
    _data['adresse_hop'] = adresse_hop;
    return _data;
  }
}
