import 'package:flutter/material.dart';
import 'package:projeto_social/pages/sobre_nos/about_us.dart';
import 'package:projeto_social/pages/contato/contact.dart';
import 'package:projeto_social/pages/place_order.dart';
import 'package:projeto_social/pages/developers.dart';
import 'package:projeto_social/pages/cardapio/menu.dart';
import 'package:projeto_social/pages/inicio/start.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  Widget body = Start();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 36, 7, 1),
        child: Column(
          children: [
            SizedBox(height: 45),
            Image.asset(
              'assets/logo_empresarial/logo_sem_fundo.png',
              width: 200,
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  body = const Start();
                });
              },
              title: const Text(
                'Inicio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.photo_library,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  body = Menu(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Cardápio',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.group,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  body = Contact(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Contato',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.info,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  body = AboutUs(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Quem Somos',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.volunteer_activism_outlined,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  body = PlaceOrder(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Fazer Pedido',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.code,
                color: Colors.white,
              ),
              onTap: () {
                setState(() {
                  body = Developers(
                    hasAppBar: false,
                  );
                });
              },
              title: const Text(
                'Desenvolvedores',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 110,
        centerTitle: true,
        scrolledUnderElevation: 1,
        backgroundColor: Color.fromARGB(255, 36, 7, 1),
        title: Image.asset(
          'assets/logo_empresarial/logo_sem_fundo.png',
          width: 100,
        ),
        foregroundColor: Colors.white,
      ),
      body: body,
    );
  }
}
