import 'package:desafio_wa/functions/generate_pessoas.dart';
import 'package:desafio_wa/models/Pessoa.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Adoção de animais'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  
  List<Pessoa>? listaPessoas;

  



  TextEditingController emailController = TextEditingController();

  String? emailValidator(value) {
    if (value.isEmpty) {
      return 'Digite um e-mail.';
    }
    if (!EmailValidator.validate(value)) {
      return "E-mail invalido";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
  listaPessoas ??= generatePessoas();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Adoção de animais"),
      ),
      body: Center(
       
        child: Column(
         
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                 key: _formKey,
                child: TextFormField(
                  validator: emailValidator,
                  controller: emailController,
                  decoration: const InputDecoration(
                    hintText: "Coloque seu email aqui..."
                  ),
                  
                ),
              ),
            ),
             TextButton(
              
              onPressed: (){
                 if (_formKey.currentState!.validate()) {
                  for(int i = 0; i< listaPessoas!.length; i++){
                      if(emailController.text == listaPessoas![i].email){
                          print("achou");
                          
                          break;
                        //TODO ir para proxima página
                      }
                     

                     //TODO fazer um snack para fail e success
                  }
                  
                 }
              },
              child: const Text("Entrar"))
          ],
        ),
      ),
      
    );
  }
}
