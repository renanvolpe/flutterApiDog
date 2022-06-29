import 'package:desafio_wa/models/models.dart';

class Dog {
  
  int id;
  String name;
  String bred_for;
  String life_span;
  String temperament;
  String origin;
  String reference_image_id;
  //Weight weigth;
  //Height heigth;

  //Dog(this.id, this.name, this.bred_for, this.life_span, this.temperament,      this.reference_image_id, this.heigth, this.weigth,[this.origin = ""]  );
  
  Dog._({required this.id, required this.name, required this.bred_for, required this.life_span,
     required this.temperament,required this.origin, required this.reference_image_id
      });

  factory Dog.fromJson(Map<String, dynamic> json) {
    return  Dog._(
      id: json['id'],
      name: json['name'],
      bred_for: json['nambred_fore'],
      life_span: json['life_span'],
      temperament: json['temperament'],
      origin: json['origin'],
      reference_image_id: json['reference_image_id'],
    );
}
}