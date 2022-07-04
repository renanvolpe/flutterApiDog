//aqui vai gerar as pessoas por com seus respectivos emails

import 'package:desafio_wa/models/Pessoa.dart';


List<Pessoa> generatePessoas(){
Pessoa renan = Pessoa("r@r.com", "nome1");
Pessoa pessoa1 = Pessoa("email1@email1.com", "nome1");
Pessoa pessoa2 = Pessoa("email2@email2.com", "nome2");
Pessoa pessoa3 = Pessoa("email3@email3.com", "nome3");
Pessoa pessoa4 = Pessoa("email4@email4.com", "nome4");
Pessoa pessoa5 = Pessoa("email5@email5.com", "nome5");
Pessoa pessoa6 = Pessoa("email6@email6.com", "nome6");
Pessoa pessoa7 = Pessoa("email7@email7.com", "nome7");
Pessoa pessoa8 = Pessoa("email8@email8.com", "nome8");
Pessoa pessoa9 = Pessoa("email9@email9.com", "nome9");

 List<Pessoa> listaPessoas = <Pessoa>[
  renan,
  pessoa1,
  pessoa2,
  pessoa3,
  pessoa4,
  pessoa5,
  pessoa6,
  pessoa7,
  pessoa8,
  pessoa9
  ];

  return listaPessoas;


}