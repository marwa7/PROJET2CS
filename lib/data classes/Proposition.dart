class Propostion {
  Propostion({
    required this.idProposition,
    required this.idDemande,

    required this.dateCreation,
    required this.etat,
  });
  late final String idProposition;
  late final String idDemande;
  late final String dateCreation;
  late final String etat;

  Propostion.fromJson(Map<String, dynamic> json){
    idProposition = json['id_proposition'];
    idDemande = json['id_demande'];
    dateCreation = json['date_creation'];
    etat = json['etat'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_proposition'] = idProposition;
    _data['id_demande'] = idDemande;
    _data['date_creation'] = dateCreation;
    _data['etat'] = etat;
    return _data;
  }
}