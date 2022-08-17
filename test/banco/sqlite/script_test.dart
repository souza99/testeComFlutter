import 'package:flutter_test/flutter_test.dart';
import 'package:teste/banco/sqlite/script.dart';

void main() {
  setUp(() {});

  tearDown(() {});

  tearDownAll(() {});

  group('Teste script sqlite', () {
    test('a lista de comandos não pode ser vazia', () {
      var comandos = criarBanco;
      expect(comandos.isNotEmpty, true);
    });

    test('a lista de comandos deve se do tipo String', () {
      var comandos = criarBanco;

      for (var comando in comandos) {
        expect(comando, isInstanceOf<String>());
      }
    });
  });
}
