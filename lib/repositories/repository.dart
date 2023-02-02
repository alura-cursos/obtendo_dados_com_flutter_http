import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/filme.dart';

Future<List<Filme>> getFilmes() async {
  final response = await http.get(Uri.parse(
      'https://raw.githubusercontent.com/alura-cursos/obtendo_dados_com_flutter_http/main/filmes.json'));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return List<Filme>.from(json.map((elemento) {
      return Filme.fromJson(elemento);
    }));
  } else {
    return Future.error("Ops! Um erro ocorreu.");
  }
}
