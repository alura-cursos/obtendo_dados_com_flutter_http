import 'package:flutter/material.dart';

class CardFilme extends StatelessWidget {
  final String nome;
  final String imagem;

  const CardFilme({
    Key? key,
    required this.nome,
    required this.imagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(imagem),
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.blueGrey,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  )
                ]),
          ),
        ),
        const SizedBox(height: 8.0),
        Text(
          nome,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
