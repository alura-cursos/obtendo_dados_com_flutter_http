import 'package:flutter/material.dart';
import 'card_filme.dart';
// Nesse componente, utilizamos o model Filme, e por isso podem haver erros ( de importação e de uso).
//Mas calma! Ainda vamos criar esse model ao longo do artigo e os erros devem sumir.

// Importação do model filme
import '../models/filme.dart';

class ListaFilmes extends StatelessWidget {
  const ListaFilmes({
    Key? key,
    required this.filmes,
  }) : super(key: key);

  // Se a linha abaixo estiver com erro, isso significa apenas que o model Filme ainda não foi criado!
  final List<Filme> filmes;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 10,
        childAspectRatio: 3 / 4,
      ),
      itemCount: filmes.length,
      itemBuilder: ((context, index) {
        final filme = filmes[index];
        return CardFilme(
          nome: filme.nome,
          imagem: filme.imagem,
        );
      }),
    );
  }
}
