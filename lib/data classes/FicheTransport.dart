class FicheTransport{
  FicheTransport({
    required this.idFiche,
    required this.idProposition,
    required this.idEts,
    required this.dateCreation,

  });
  late final String idFiche;
  late final String idProposition;
  late final String idEts;
  late final String dateCreation;


  FicheTransport.fromJson(Map<String, dynamic> json){
    idFiche  =  json['id_fiche'];
    idProposition = json['id_proposition'];
    idEts = json['id_ets'];
    dateCreation = json['date_creation'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_fiche'] = idFiche;
    _data['id_proposition'] = idProposition;
    _data['id_ets'] = idEts;
    _data['date_creation'] = dateCreation;

    return _data;
  }
}