import 'classes/class_person.dart';

double calculateIMC(String name, double weight, double height) {
  Person person = Person(name, weight, height);

  if((height.toString().isEmpty || double.parse(height.toString()) == 0) || (weight.toString().isEmpty || double.parse(weight.toString()) == 0)){
    throw ArgumentError('Weight and height can\'t be empty or zero!');
  }
  
  return person.calculateIMC();
}
