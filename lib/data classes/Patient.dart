class Patient {
  Patient({
    required this.idPatient,
    required this.lastName,
    required this.firstName,
    required this.phone,
    required this.adresse,
    required this.nss,
    required this.dateNaissance,
    required this.wilaya,
  });
  late final String idPatient;
  late final String lastName;
  late final String firstName;
  late final String phone;
  late final String adresse;
  late final String nss;
  late final String dateNaissance;
  late final String wilaya;

  Patient.fromJson(Map<String, dynamic>? json){
    if (json == null) return;
    idPatient = json['id_patient'];
    lastName = json['last_name'];
    firstName = json['first_name'];
    phone = json['phone'];
    adresse = json['adresse'];
    nss = json['num_ass_soc'];
    dateNaissance = json['date_naissance'];
    wilaya = json['wilaya'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id_patient'] = idPatient;
    _data['last_name'] = lastName;
    _data['first_name'] = firstName;
    _data['phone'] = phone;
    _data['adresse'] = adresse;
    _data['num_ass_soc'] = nss;
    _data['date_naissance'] = dateNaissance;
    _data['wilaya'] = wilaya;
    return _data;
  }
}