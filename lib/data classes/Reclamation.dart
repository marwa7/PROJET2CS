class Reclamation {
  Reclamation({
    required this.idReclamation,

    required this.idReclamateur,
    required this.titre ,
    required this.contenu,
    required this.dateCreation,
    required this.etat,
  });
  late final String idReclamation;
  late final String idReclamateur;
  late final String titre;
  late final String contenu;
  late final String dateCreation;
  late final String etat;

  Reclamation.fromJson(Map<String, dynamic> json){
    idReclamation = json['id_reclamation'];
    idReclamateur = json['id_reclamateur'];
    titre = json['titre'];
    contenu = json['contenu'];
    dateCreation = json['date_creation'];
    etat = json['etat'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_reclamation'] = idReclamation;
    _data['id_reclamateur'] = idReclamateur;
    _data['titre'] = titre;
    _data['contenu'] = contenu;
    _data['date_creation'] = dateCreation;
    _data['etat'] = etat;
    return _data;
  }
}