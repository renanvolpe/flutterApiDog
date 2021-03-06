//consumo para fazer listar todos os cachorrosv
import 'dart:convert';

import 'package:desafio_wa/consts/const.dart';
import 'package:desafio_wa/models/models.dart';
import 'package:http/http.dart' as http;


String v1 = "v1/";

//chamada das raças dos cachorros
Future<List<Dog>> callBreeds() async {
  
  String breeds = "breeds";


  Map<String, String> header = {'x-api-key': apiDogKey};

  var url = Uri.parse(apiDog + v1 + breeds + "?limit=3&page=0");  //limite de 3 raças

  var response = await http.get(url, headers: header);

  List<Dog> listDogs = (json.decode(response.body) as List)
      .map((data) => Dog.fromJson(data))
      .toList();

      

  return listDogs;
}
