void main() {
  //dart segue o modelo de herança unica
  //vc só pode estender uma unica classe.

  Person johnny = Person('Johnny', 42, occupation: 'Pilot')
    ..speak()
    ..name = 'Big Johnny'
    ..speak();

  print(johnny.name);
  print(johnny.occupation);

  Person jane = Person.fromJson({'name': 'Jane', 'age': 30}, 'Web Developer');
  jane.speak();
  print(jane.occupation);

  print(johnny == jane);
  Person jane2 = Person('Jane', 39, occupation: 'Web Developer');
  print(jane == jane2);

  var bob = Employee('Bob', 23, DateTime.now());
  bob.speak();
}

class Employee extends Person {
  Employee(String name, int age, this.joinDate) : super(name, age);

  final DateTime joinDate;

  @override
  speak() {
    print('My name is $name. I joined on $joinDate');
  }
}

class Person {
  Person(this._name, this.age, {this.occupation});
  Person.fromJson(Map json, [this.occupation]) {
    _name = json['name'];
    age = json['age'];
  }

  String _name;
  int age;
  String occupation;

  String get name => _name;
  void set name(String updatedName) => _name = updatedName;

  // Se substituir o operador ==, você também deve substituir o getter `hashCode` do objeto
  bool operator ==(dynamic b) =>
      _name == b.name && age == b.age && occupation == b.occupation;

  speak() {
    print("my name is $_name .I'm $age years old.");
  }
}
