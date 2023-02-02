import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/filme.dart';

Future<List<Filme>> getFilmes() async {
  final response = await http.get(Uri.parse(
      'https://gist.githubusercontent.com/jhoisz/1eb7e9a3cb6466c44d51bdb28da9d56b/raw/a95829716428dc7ed7b5a7ae2952777251b7819c/filmes_studio_ghibli.json'));

  print(response.body);

  final json = jsonDecode(response.body);

  return List<Filme>.from(json.map((elemento) {
    return Filme.fromJson(elemento);
  }));
}
