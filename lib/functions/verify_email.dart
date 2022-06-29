//aqui vai verificar se há o email na lista do email recebido



import 'package:desafio_wa/models/Pessoa.dart';

bool verifyEmail(
  List<Pessoa> emails,
  String loginEmail,
) {
  for (int i = 0; i < emails.length; i++) {
    if (loginEmail == emails[i].email) {
      return true;
    }

  }
  return false;
}
