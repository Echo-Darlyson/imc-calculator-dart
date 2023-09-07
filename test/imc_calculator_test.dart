import 'package:imc_calculator/imc_calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Calculate IMC', () {
    expect(calculateIMC('Darlyson', 92, 1.86), equals(26.59266967279454));
  });

  test('Calculate IMC without weight', () {
    expect(() => calculateIMC('Darlyson', 0, 1.86), throwsA(TypeMatcher<ArgumentError>()));
  });

  test('Calculate IMC without height', () {
    expect(() => calculateIMC('Darlyson', 92, 0), throwsA(TypeMatcher<ArgumentError>()));
  });
}
