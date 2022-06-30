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
      required this.adresse_patient,
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
  late final String adresse_patient;
  late final String adresse_hop;

  Demande.fromJson(Map<String, dynamic>? json) {
    if(json==null) return;
    idDemande = json['id_demande'];
    patient = Patient.fromJson(json['patient']);
    ville = json['ville'];
    dateCreation = json['date_creation'];
    etat = json['etat'];
    description = json['description'];
    dateValidation = json['date_validation'];
    dateDebut = json['date_debut'];
    dateFin = json['date_fin'];
    adresse_patient = json['adresse_patient'];
    adresse_hop = json['adresse_hospital'];
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
    _data['adresse_patient'] = adresse_patient;
    _data['adresse_hospital'] = adresse_hop;
    return _data;
  }
}
