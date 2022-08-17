import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:teste/banco/sqlite/script.dart';

class Conexao {
  static Database? _db;

  static Future<Database> abrir() async {
    if (_db == null) {
      String caminho = join(await getDatabasesPath(), 'banco.db');
      _db = await openDatabase(caminho, version: 1, onCreate: (db, version) {
//        criarBanco.forEach((elemento) {
//          db.execute(elemento);
//        });

//        criarBanco.forEach(db.execute);

        for (var comando in criarBanco) {
          db.execute(comando);
        }
      });
    }
  }
}
