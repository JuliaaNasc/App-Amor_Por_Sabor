import 'package:flutter/material.dart';
import 'package:projeto_social/pages/cardapio/fazer_pedido.dart';
import 'package:projeto_social/pages/cardapio/opcoes_padroes.dart';
import 'package:projeto_social/pages/cardapio/personalizar_op%C3%A7%C3%A3o.dart';

class Album extends StatelessWidget {
  Album({
    super.key,
    required this.image,
    required this.text,
    // required this.videos,
    // required this.imagens,
  });

  String image;
  String text;
  // List<String> videos;
  // List<String> imagens;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return FazerPedidoScreen();
          },
        );
      },
      child: Column(
        children: [
          Container(
            width: 180,
            height: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(18)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 36, 7, 1),
                  spreadRadius: 0.1,
                  blurRadius: 10,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 180,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 36, 7, 1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 36, 7, 1),
                  spreadRadius: 0.1,
                  blurRadius: 10,
                ),
              ],
            ),
            padding: EdgeInsets.all(10),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
