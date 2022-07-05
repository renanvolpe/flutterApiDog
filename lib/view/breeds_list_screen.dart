import 'package:flutter/material.dart';
import 'dart:math' as math;

class BreedsList extends StatefulWidget {
  const BreedsList({Key? key}) : super(key: key);

  @override
  State<BreedsList> createState() => _BreedsListState();
}

class _BreedsListState extends State<BreedsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista de animais pela API"),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
                child: const Center(
                    child: Text(
              "Abaixo temos a resposta da \"Dog API\" ",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  overflow: TextOverflow.fade),
            ))),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: TextFormField(
                decoration: const InputDecoration(
                        filled: true,
                        fillColor: Color.fromARGB(30, 158, 158, 158),
                        hintText: "Digite a raça aqui...",
                        hintStyle: TextStyle(
                          color: Colors.black45,
                          fontSize: 15,
                        ),
                        suffixIcon: Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(25)))),
              ),
            ),
            SizedBox(
              height: 350, //TODO ARRUMAR O TAMANHO DA TELA
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (BuildContext context, int index) {  
                  return eachBreed(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget eachBreed(BuildContext context) {
  return Container(
      
      decoration: BoxDecoration(
        
          color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
              .withOpacity(1.0),
              
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Row(
        children: [
          SizedBox(
            
            width: MediaQuery.of(context).size.width / 2,
            child: Column(
              children: [
                Container(
                    child:  Stack(
                      children: [
                        Text(
                          "Raça do animal",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                          foreground: Paint()..style = PaintingStyle.stroke
                        ..strokeWidth = 1 ..color = Colors.black,
                          ),
                        ),
                        const Text(
                          "Raça do animal",
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,
                         color: Colors.white
                          ),
                        ),
                      ],
                    )),
                const Text(
                  "Descrição básica do do animal",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                const Text(
                  "Descrição 2 ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              
              //width: MediaQuery.of(context).size.width/2,
              child: Column(
                children: [
                  Container(
                    height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                  
                    
                    child: Image(
                      image: Image.asset("assets/dog1.png").image,
                      fit: BoxFit.fill,
                      //width: MediaQuery.of(context).size.width / 3,
                     
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ));
}
