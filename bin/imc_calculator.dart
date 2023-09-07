import 'package:imc_calculator/imc_calculator.dart' as imc_calculator;
import 'dart:convert';
import 'dart:io';

void main(List<String> arguments) {
  print('Name: ');
  var name = stdin.readLineSync(encoding: utf8);
  print('Weight (Kg): ');
  var weight = stdin.readLineSync(encoding: utf8);
  print('Height (m): ');
  var height = stdin.readLineSync(encoding: utf8);

  if((height.toString().isEmpty || double.parse(height.toString()) == 0) || (weight.toString().isEmpty || double.parse(weight.toString()) == 0)){
    throw ArgumentError('Weight and height can\'t be empty or zero!');
  }

  print('IMC Calculado: ${imc_calculator.calculateIMC(name.toString(), double.parse(weight.toString()), double.parse(height.toString()))}');
}
