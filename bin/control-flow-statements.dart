void main() {
  //if
  var yearOfBirth = 1990;

  if (yearOfBirth < 1990) {
    print('Born before the 90s');
  } else {
    print('Born during/after the 90s');
  }

//if else
  if (yearOfBirth < 1990) {
    print('Born before the 90s');
  } else if (yearOfBirth == 1990) {
    print('Born in 1990');
  } else
    print('Born during/after the 90s');

//ternary
  var str = yearOfBirth < 1990 ? 'before the 90s' : 'Born during/after the 90s';
  print(str);

  //for loop
  var message = StringBuffer('dart is fun');
  for (var j = 0; j < 3; j++) {
    message.write('!');
  }
  print(message);

  var callbacks = [];
  for (var k = 0; k < 3; k++) {
    callbacks.add(() => print(k));
  }
  callbacks.forEach((cb) => cb());

  //while and do-while loop
  var k = 0;
  while (k < 10) {
    print(k);
    k++;
  }

  do {
    print(k);
  } while (k < 10);

  //break
  var i = 0;
  do {
    if (i == 5) break;
    print(i);
    i++;
  } while (i < 10);

  //continue
  for (var n = 1; n < 10; n++) {
    if (n % 2 != 0) continue;
    print(n);
  }

  //stwich and case
  const appStatus = 'OPEN';
  switch (appStatus) {
    case 'OPEN':
      print('your application is open');
      break;
    case 'PENDING':
      print('you application is pending');
      break;
    case 'CLOSE':
      print('you application is closed');
      break;
    default:
      print('unknown');
  }

  //assert
/*   Durante o desenvolvimento, use uma declaração assert - ; - interromper a execução normal 
se uma condição booleana for falsa. Você pode encontrar exemplos de declarações de afirmação ao longo deste passeio. 
Aqui estão mais alguns:assert(condition, optionalMessage) */
  assert(''.isEmpty);
  assert(''.isNotEmpty, 'the string is empty');
}
