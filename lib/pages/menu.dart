import 'package:flutter/material.dart';
import 'package:projeto_social/components/album.dart';
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
                  imagens: const [],
                  videos: [],
                ),
                Album(
                  image: 'assets/menu/trufas/trufa_01.jpeg',
                  text: 'Trufas Gourmet',
                  imagens: const [],
                  videos: [],
                ),
                Album(
                  image: 'assets/menu/copo_felicidade/copos.jpeg',
                  text: 'Copos da Felicidade',
                  imagens: const [],
                  videos: [],
                ),
                Album(
                  image: 'assets/menu/panetones/panetones.jpeg',
                  text: 'Panetones',
                  imagens: const [],
                  videos: const [],
                ),
                Album(
                  image: 'assets/menu/biscoitos/biscoito_01.jpeg',
                  text: 'Biscoitos',
                  imagens: const [],
                  videos: [],
                ),
              ],
            ),
            SizedBox(height: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 36, 7, 1),
                side: const BorderSide(
                  width: 2,
                  color: Color.fromARGB(255, 36, 7, 1),
                ),
              ),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (c) {
                      return PlaceOrder(
                        hasAppBar: true,
                      );
                    },
                  ),
                );
              },
              child: const Text(
                'Faça o seu Pedido',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
