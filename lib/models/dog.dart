// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:desafio_wa/models/models.dart';

class Dog {
  
  int id;
  String name;
  String bred_for;
  String life_span;
  String temperament;
  String origin;
  String reference_image_id;
  Dog({
    required this.id,
    required this.name,
    required this.bred_for,
    required this.life_span,
    required this.temperament,
    required this.origin,
    required this.reference_image_id,
  });
  //Weight weigth;
  //Height heigth;

  
 

  Dog copyWith({
    int? id,
    String? name,
    String? bred_for,
    String? life_span,
    String? temperament,
    String? origin,
    String? reference_image_id,
  }) {
    return Dog(
      id: id ?? this.id,
      name: name ?? this.name,
      bred_for: bred_for ?? this.bred_for,
      life_span: life_span ?? this.life_span,
      temperament: temperament ?? this.temperament,
      origin: origin ?? this.origin,
      reference_image_id: reference_image_id ?? this.reference_image_id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'bred_for': bred_for,
      'life_span': life_span,
      'temperament': temperament,
      'origin': origin,
      'reference_image_id': reference_image_id,
    };
  }

  factory Dog.fromMap(Map<String, dynamic> map) {
    return Dog(
      id: map['id'] as int,
      name: map['name'] as String,
      bred_for: map['bred_for'] as String,
      life_span: map['life_span'] as String,
      temperament: map['temperament'] as String,
      origin: map['origin'] as String,
      reference_image_id: map['reference_image_id'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Dog.fromJson(String source) => Dog.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Dog(id: $id, name: $name, bred_for: $bred_for, life_span: $life_span, temperament: $temperament, origin: $origin, reference_image_id: $reference_image_id)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Dog &&
      other.id == id &&
      other.name == name &&
      other.bred_for == bred_for &&
      other.life_span == life_span &&
      other.temperament == temperament &&
      other.origin == origin &&
      other.reference_image_id == reference_image_id;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      bred_for.hashCode ^
      life_span.hashCode ^
      temperament.hashCode ^
      origin.hashCode ^
      reference_image_id.hashCode;
  }
}
