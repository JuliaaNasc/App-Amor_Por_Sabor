import 'package:flutter/material.dart';
import 'package:projeto_social/pages/cardapio/components/album.dart';
import 'package:projeto_social/pages/cardapio/opcoes_padroes.dart';
import 'package:projeto_social/pages/cardapio/personalizar_op%C3%A7%C3%A3o.dart';
import 'package:projeto_social/pages/place_order.dart';

class Menu extends StatelessWidget {
  Menu({
    required this.hasAppBar,
    super.key,
  });

  bool hasAppBar;

  @override
  Widget build(BuildContext context) {
    AppBar? appbar = null;
    if (hasAppBar) {
      appbar = AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        scrolledUnderElevation: 1,
        backgroundColor: Color.fromARGB(255, 36, 7, 1),
        title: Image.asset(
          'assets/logo_empresarial/logo_sem_fundo.png',
          width: 100,
        ),
        foregroundColor: Colors.white,
      );
    }
    return Scaffold(
      appBar: appbar,
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.count(
              shrinkWrap: true,
              primary: false,
              crossAxisCount: 2,
              padding: EdgeInsets.all(16),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75,
              children: [
                Album(
                  image: 'assets/menu/ovos_pascoa/ovos.jpeg',
                  text: 'Ovos de Páscoa',
                ),
                Album(
                  image: 'assets/menu/trufas/trufa_01.jpeg',
                  text: 'Trufas Gourmet',
                ),
                Album(
                  image: 'assets/menu/copo_felicidade/copos.jpeg',
                  text: 'Copos da Felicidade',
                ),
                Album(
                  image: 'assets/menu/panetones/panetones.jpeg',
                  text: 'Panetones',
                ),
                Album(
                  image: 'assets/menu/biscoitos/biscoito_01.jpeg',
                  text: 'Biscoitos',
                ),
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text("Escolha uma opção"),
                      content: Text("Selecione uma das opções abaixo:"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => OpcoesPadroesScreen()),
                            );
                          },
                          child: Text("Pedidos Padrões"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PersonalizarOpcaoScreen()),
                            );
                          },
                          child: Text("Personalizar Pedido"),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 36, 7, 1),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromARGB(255, 36, 7, 1),
                      spreadRadius: 0.1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                padding: EdgeInsets.all(10),
                child: const Text(
                  'Faça Já o Seu Pedido',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
