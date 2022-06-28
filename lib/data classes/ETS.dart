class ETS {
ETS({
  required this.idEts,
  required this.nom,
  required this.phone,
  required this.adresse,
});
late final String idEts;
late final String nom;
late final String phone;
late final String adresse;

ETS.fromJson(Map<String, dynamic> json){
idEts = json['id_ets'];
nom = json['nom'];
phone = json['phone'];
adresse = json['adresse'];
}

Map<String, dynamic> toJson() {
  final _data = <String, dynamic>{};
  _data['id_ets'] = idEts;
  _data['nom'] = nom;
  _data['phone'] = phone;
  _data['adresse'] = adresse;
  return _data;
}
}