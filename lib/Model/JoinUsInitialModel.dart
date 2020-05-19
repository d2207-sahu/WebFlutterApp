class JoinUsModel {
  String _name, _phone, _email;

  JoinUsModel(this._email, this._phone, this._name);

  JoinUsModel.fromJson(Map<String, dynamic> json)
      : _name = json['name'],
        _phone = json['phone'],
        _email = json['email'];

  Map<String, dynamic> toJson() =>
      {'name': _name, 'email': _email, 'phone': _phone};
}
