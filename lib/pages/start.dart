import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:projeto_social/pages/contact.dart';
import 'package:projeto_social/pages/place_order.dart';
import 'package:projeto_social/pages/menu.dart';

import 'about_us.dart';

class Start extends StatelessWidget {
  const Start({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CarouselSlider(
              items: [
                Stack(
                  children: [
                    Image.asset(
                      'assets/carrossel/copo_felicidade.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'QUEM SOMOS',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return AboutUs(
                                  hasAppBar: true,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/carrossel/copo_felicidade.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'CARDÁPIO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return Menu(
                                  hasAppBar: true,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/carrossel/copo_felicidade.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'CONTATO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
                        ),
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (c) {
                                return Contact(
                                  hasAppBar: true,
                                );
                              },
                            ),
                          );
                        },
                        child: const Text(
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Image.asset(
                      'assets/carrossel/copo_felicidade.png',
                    ),
                    const Positioned.fill(
                      top: 90,
                      child: Text(
                        'FAZER PEDIDO',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      top: 140,
                      bottom: 50,
                      left: 130,
                      right: 130,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          side: const BorderSide(width: 2, color: Colors.white),
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
                          'Saiba Mais...',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
              options: CarouselOptions(
                viewportFraction: 1,
                autoPlay: true,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Queremos adoçar a sua vida, usando apenas ingredientes doces.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Color.fromARGB(255, 36, 7, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/modelos/julia_03.png',
                ),
              ),
            ),
            const Text(
              'Copo da Felicidade',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                ' . . .',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/modelos/julia_02.png',
                ),
              ),
            ),
            const Text(
              'Panetones',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                ' . . .',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/modelos/julia_01.png',
                ),
              ),
            ),
            const Text(
              'Trufas',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                '. . .',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(75, 40, 75, 20),
              child: Container(
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      spreadRadius: 1,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/modelos/julia_01.png',
                ),
              ),
            ),
            const Text(
              'Ovos de Páscoa',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
                color: Colors.black,
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(50, 10, 50, 20),
              child: Text(
                '. . .',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 19,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
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
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
