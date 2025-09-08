/// id : 1
/// first_name : "Erhard"
/// last_name : "Whichelow"
/// email : "ewhichelow0@usda.gov"
/// gender : "Male"
/// address : "0x7a9c96d2f945d27bbea2f9264868b64676236563"
/// phone : "2503221614"

class MyOwnUserApi {
  MyOwnUserApi({
      num? id, 
      String? firstName, 
      String? lastName, 
      String? email, 
      String? gender, 
      String? address, 
      String? phone,}){
    _id = id;
    _firstName = firstName;
    _lastName = lastName;
    _email = email;
    _gender = gender;
    _address = address;
    _phone = phone;
}

  MyOwnUserApi.fromJson(dynamic json) {
    _id = json['id'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _email = json['email'];
    _gender = json['gender'];
    _address = json['address'];
    _phone = json['phone'];
  }
  num? _id;
  String? _firstName;
  String? _lastName;
  String? _email;
  String? _gender;
  String? _address;
  String? _phone;
MyOwnUserApi copyWith({  num? id,
  String? firstName,
  String? lastName,
  String? email,
  String? gender,
  String? address,
  String? phone,
}) => MyOwnUserApi(  id: id ?? _id,
  firstName: firstName ?? _firstName,
  lastName: lastName ?? _lastName,
  email: email ?? _email,
  gender: gender ?? _gender,
  address: address ?? _address,
  phone: phone ?? _phone,
);
  num? get id => _id;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  String? get email => _email;
  String? get gender => _gender;
  String? get address => _address;
  String? get phone => _phone;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['email'] = _email;
    map['gender'] = _gender;
    map['address'] = _address;
    map['phone'] = _phone;
    return map;
  }

}