import 'package:flutter_test/flutter_test.dart';
import 'package:teste/banco/sqlite/usuario.dart';
import 'package:teste/banco/sqlite/usuario_dao.dart';

void main() async {
  group('testando usuario', () {
    test("Salvando usuario", () async{
      var usuario = Usuario(nome: "joao pedro", senha: "3960934xlz");
      var usuarioDao = UsuarioDAO();

      var usuarioSalvo = await usuarioDao.salvar(usuario);

      expect(usuarioSalvo, true);
    });
  });
}
