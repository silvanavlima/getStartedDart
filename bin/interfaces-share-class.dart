void main() {
  //Uma interface fornece um contrato contendo variaveis de instancia e metodos
  //que devem ser definidos pela class que o implementa.
  //Para criar uma interface, defina uma classe ou uma classe abstrata.
  //No dart as classes tem flexibilidade de serem estendidas como uma classe pai ou
  //implementadas como uma interface.

  var pixel = Phone('Pixel XL', 'HTC');
  pixel.getDeviceInfo();
  pixel.getAllFeatures();
}

//cMixins nos permitem reutilizar classo código de a em várias hierarquias
// sem poluir nossa árvore de herança. Podemos definir um mixin criando um class.
//Agora podemos compartilhar esse mix em nossa Phoneclasse usando a withcláusula Isso agora nos permite acessar as propriedades em nosso mixin.
//class FeaturesMixin {
mixin FeaturesMixin {
  bool blueTooth = true;
  bool dualSim = false;
  bool nfc = true;
}

mixin UtilitiesMixin on FeaturesMixin {
  bool calculator = true;
  bool flashlight = true;
  bool thermometer = true;

  String _has(bool feat) => feat ? 'yes' : 'no';

  void getAllFeatures() => print('''
  ---FEATURES
  Bluetooth: ${_has(super.blueTooth)}
  Dual SIM: ${_has(super.dualSim)}
  NFC: ${_has(super.nfc)}
  Calculator: ${_has(calculator)}
  Flashlight: ${_has(flashlight)}
  Thermometer: ${_has(thermometer)}
  ===
  ''');
}

abstract class Device {
  String name;
  String manufacturer;
  void getDeviceInfo();
}

//uma class que implementa nossa interface. Vamos definir nosso construtor que aceita a namee manufacturer como parâmetros
//class Phone implements Device {
class Phone with FeaturesMixin, UtilitiesMixin implements Device {
  Phone(this.name, this.manufacturer);

  String name;
  String manufacturer;

//implementar o getDeviceInf ométodo da nossa interface e instanciar essa classe.
  void getDeviceInfo() => print('''
  ===
  Device name: $name
  Manufactured by: $manufacturer
  ''');
}
