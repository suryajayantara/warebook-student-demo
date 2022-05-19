import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
part 'mahasiswa_model.g.dart';

@JsonSerializable()
class Mahasiswa {
  String name;
  String address;

  Mahasiswa({
    required this.name,
    required this.address,
  });

  Mahasiswa copyWith({
    String? name,
    String? address,
  }) {
    return Mahasiswa(
      name: name ?? this.name,
      address: address ?? this.address,
    );
  }

  Map<String, dynamic> toJson() => _$MahasiswaToJson(this);

  factory Mahasiswa.fromJson(Map<String, dynamic> map) =>
      _$MahasiswaFromJson(map);

  @override
  String toString() => 'Mahasiswa(name: $name, address: $address)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Mahasiswa && other.name == name && other.address == address;
  }

  @override
  int get hashCode => name.hashCode ^ address.hashCode;
}
