import 'dart:convert';

import 'gender.dart';

class Camel {
  String id;
  String name;
  String userId;
  int age;
  Gender gender;
  String trackerBarCode;

  Camel({
    required this.id,
    required this.name,
    required this.userId,
    required this.age,
    required this.gender,
    required this.trackerBarCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      "userId": userId,
      'age': age,
      'gender': gender.index,
      'trackerBarCode': trackerBarCode,
    };
  }

  factory Camel.fromMap(Map<String, dynamic> map) {
    return Camel(
      id: map['id'] as String,
      name: map['name'],
      userId: map['userId'],
      age: map['age'],
      gender: Gender.values[map['gender']],
      trackerBarCode: map['trackerBarCode'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Camel.fromJson(String source) =>
      Camel.fromMap(json.decode(source) as Map<String, dynamic>);
}
