import 'package:flutter_test/flutter_test.dart';
import 'package:teste/banco/aula.dart';

void main() {
  setUp(() {});

  tearDown(() {});

  tearDownAll(() {});

  group("teste somar", () {
    test('', () {
      var numero1 = 10.0;
      var numero2 = 15.0;
      var calculadora = Calculadora();
      var resultado = calculadora.somar(numero1, numero2);

      expect(resultado, 25.0);
    });
  });
}
