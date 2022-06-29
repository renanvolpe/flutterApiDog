import 'package:desafio_wa/bloc/bloc.dart';
import 'package:desafio_wa/functions/generate_pessoas.dart';
import 'package:desafio_wa/functions/verify_email.dart';
import 'package:desafio_wa/models/Pessoa.dart';
import 'package:desafio_wa/services/dog_services.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_analytics/observer.dart';




class SimpleBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    print(event);
  }

  @override
  onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    print(transition);
  }
}
Future<void> main()  async{
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey();

 
  Bloc.observer = SimpleBlocObserver();

  runApp( 
    MultiBlocProvider(
        providers: [
          BlocProvider<NavigationBloc>(
            create: (context) => NavigationBloc(navigatorKey: _navigatorKey),
          ),
          ],
          child: MyApp(
          navigatorKey: _navigatorKey,)
    )
  );

  //To navigation
 
  
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  MyApp({Key? key, required this.navigatorKey}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key }) : super(key: key);

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

                  //verify email
                  

                 bool resposta = verifyEmail(listaPessoas!, emailController.text);
                  
                 resposta ? print("object") /* CONECTADO */ : print("object"); /* NAO CONECTADO */ 
                  
                 }
              },
              child: const Text("Entrar"))
          ],
        ),
      ),
      
    );
  }
}
