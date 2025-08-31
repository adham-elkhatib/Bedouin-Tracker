import 'dart:convert';

class User {
  String id;
  String email;
  String name;
  String phoneNumber;

  User({
    required this.id,
    required this.email,
    required this.name,
    required this.phoneNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phone_number': phoneNumber,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] as String,
      email: map['email'],
      name: map['name'],
      phoneNumber: map['phone_number'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);
}
