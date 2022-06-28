class StaffCnas {
  StaffCnas({
    required this.idStaff,
    required this.nom,
    required this.prenom,
    required this.code,
  });
  late final String idStaff;
  late final String nom;
  late final String prenom;
  late final String code;

  StaffCnas.fromJson(Map<String, dynamic> json){
    idStaff = json['id_staff_cnas'];
    nom = json['nom'];
    prenom = json['phone'];
    code = json['adresse'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_staff_cnas'] = idStaff;
    _data['nom'] = nom;
    _data['phone'] = prenom;
    _data['adresse'] = code;
    return _data;
  }
}