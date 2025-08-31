import 'dart:convert';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class LiveCamelTracking {
  String id;
  LatLng location;

  LiveCamelTracking({
    required this.id,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location.toJson(),
    };
  }

  factory LiveCamelTracking.fromMap(Map<String, dynamic> map) {
    return LiveCamelTracking(
      id: map['id'] as String,
      location: LatLng.fromJson(map['location'])!,
    );
  }

  String toJson() => json.encode(toMap());

  factory LiveCamelTracking.fromJson(String source) =>
      LiveCamelTracking.fromMap(json.decode(source) as Map<String, dynamic>);
}
