void main() {
  
  //no Dart tudo é um objeto, não há tipos de dados primitivos. Todos os 
  //tipos estendem de um tipo base chamado Object.
  //Qualquer identificador sem um valor é definido como null por default.
  //Não tem undefined.

yell('Hello, World');
  
  // Optional positional parameters
  yell('Hello, World', true);
  yell('Hello, World', true, '🙀');
  
  // Optional named parameters
  whisper('Hello world', mysteriously: true);
  whisper('Hello world', mysteriously: false, emoji: '🤫');
  
  Person('Silvana').speak(emoji: '😎');
}

yell(String str, [bool exclaim = false, String emoji = '']) {
  var result = str.toUpperCase();
  if (exclaim) result += '!!!';
  if (emoji.isNotEmpty) result += emoji;
  print(result);
}

whisper(String str, {bool mysteriously, String emoji = ''}) {
  var result = str.toLowerCase();
  if (mysteriously) result += '...';
  if (emoji.isNotEmpty) result += emoji;
  print(result);
}

class Person {
  Person(this.name);
  
  String name;
  
  speak({String emoji = ''}) {
    var result = 'My name is $name';
    if (emoji.isNotEmpty) result += emoji;
    print(result);
  }
}