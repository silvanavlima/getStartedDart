void main() {
  var a =
      1; //var Uma maneira de declarar uma variável sem especificar seu tipo.
  print(a);

  int b = 2; //int tipo int
  print(b);

  //Final e const
/*   se nao pretende alterar uma variavel use final ou const */

//"final" significa atribuição única: uma variável final ou campo must tem um inicializador.
// Uma vez atribuído um valor, o valor de uma variável final não pode ser alterado. final modifica variáveis.
  final c = 'hello';
  print(c);

//CONST-> usada pra fazer uma variavel
//palavra-chave const usada para fazer uma variável para armazenar um valor da constante de tempo de compilação. O valor da constante de tempo de compilação é um valor que será constante durante a compilação :-)

//Por exemplo, 5 é uma constante de tempo de compilação.
// While DateTime.now() que não é constante de tempo de compilação. Porque esse método retornará o tempo em que a linha está sendo executada no tempo de execução. Portanto, não podemos atribuir a DateTime.now() a uma variável const.
  const d = 'world';//Number, String, Boolean, Array, Map, Symbol, const T
  print(d);
}
