// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';


class Cat {
  String name;
  int id;
  Cat({
    required this.name,
    required this.id,
  });

  Cat copyWith({
    String? name,
    int? id,
  }) {
    return Cat(
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'id': id,
    };
  }

  factory Cat.fromMap(Map<String, dynamic> map) {
    return Cat(
      name: map['name'] as String,
      id: map['id'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Cat.fromJson(String source) => Cat.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Cat(name: $name, id: $id)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Cat &&
      other.name == name &&
      other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}
