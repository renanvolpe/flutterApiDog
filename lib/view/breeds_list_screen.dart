import 'package:flutter/material.dart';

class BreedsList extends StatefulWidget {
  const BreedsList({ Key? key }) : super(key: key);

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
          children: const [
            Text("Segunda página aqui")
          ],
        ),
      ),
    );
  }
}