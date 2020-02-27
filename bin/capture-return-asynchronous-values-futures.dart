//gerenciador de pacotes Chocolatey
import 'dart:html';
import 'dart:async';
import 'dart:convert';

void main() {
  //Aqui está um exemplo básico de um objeto futuro que retorna um resultado em algum momento
  var result = Future(() => 'hello, world');
  //Precisamos usar o thenmétodo para capturar os resultados quando a computação estiver concluída.
  result.then((str) => print(str));

//Aqui está outro exemplo que adiciona um período de tempo atrasado antes de retornar o resultado.
  var delayedResult =
      Future.delayed(Duration(seconds: 2), () => 'Displayed after 2 seconds');
  delayedResult.then((str) => print(str));
// Use o catchErrormétodo para lidar com exceções
  Future(() => throw 'there was an error').catchError((err) => print(err));

  /* Você também pode encadear seus métodos de sucesso e erro. 
  Podemos encadear tantos then blocos quanto possível. Para demonstrar isso,
   vamos criar uma variável chamada showError, que será usada para acionar 
   o catchErrorretorno de chamada do método. Então vamos modificar o resultado calculado com esta variável. */
  var showError = false;
  Future(() => showError ? throw 'There was an error' : '{"data": "success"}')
      .then((str) => json.decode(str))
      .then((dataMap) => print(dataMap['data']))
      .catchError((err) => print(err));

  /* Em nosso primeiro manipulador de sucesso, converta o resultado em um objeto de mapa usando
      o json.decodemétodo na biblioteca de conversão Dart. As bibliotecas Dart também são ricas em recursos,
       com funções que retornam objetos futuros. Aqui está um exemplo usando o HttpRequest.getStringmétodo
        para fazer uma chamada de API. */
  HttpRequest.getString('https://swapi.co/api/people/1')
      .then(print)
      .catchError((err) => print('There was an error: $err'));
}
