import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:projeto_social/pages/place_order.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({
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
      body: DefaultTabController(
          length: 4,
          child: SingleChildScrollView(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://www.instagram.com/doces.amorporsabor/',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      FontAwesomeIcons.instagram,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'INSTAGRAM ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('@doces.amorporsabor'),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'https://api.whatsapp.com/send?phone=5585988105663 ',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      FontAwesomeIcons.whatsapp,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'WHATSAPP ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('(85) 9 8810 5663'),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    onTap: () {
                      launchUrl(
                        Uri.parse(
                          'tel:85988105663',
                        ),
                        mode: LaunchMode.externalApplication,
                      );
                    },
                    leading: const Icon(
                      Icons.phone_rounded,
                      size: 35,
                    ),
                    trailing: Icon(Icons.open_in_new),
                    title: const Text(
                      'TELEFONE ',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text('(85) 9 8810 5663'),
                  ),
                  const SizedBox(height: 400),
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
                  const SizedBox(height: 10),
                ],
              ),
            ),
          )),
    );
  }
}
