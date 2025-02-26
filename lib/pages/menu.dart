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
                  image:  'assets/logo_empresarial/logo_sem_fundo.png',
                  text: 'Ovos de Páscoa',
                  imagens: const [],
                  videos: [],
                ),
                Album(
                  image:  'assets/logo_empresarial/logo_sem_fundo.png',
                  text: 'Trufas Gourmet',
                  imagens: const [],
                  videos: [],
                ),
                Album(
                  image:  'assets/logo_empresarial/logo_sem_fundo.png',
                  text: 'Copos da Felicidade',
                  imagens: const [],
                  videos: [],
                ),
                Album(
                  image:  'assets/logo_empresarial/logo_sem_fundo.png',
                  text: 'Panetones',
                  imagens: const [],
                  videos: const [],
                ),
                Album(
                  image:  'assets/logo_empresarial/logo_sem_fundo.png',
                  text: 'Biscoitos',
                  imagens: const [],
                  videos: [],
                ),
              ],
            ),
            SizedBox(height: 30),
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 2,
                  color: Colors.black,
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
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/wave_red.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
