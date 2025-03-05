import 'package:flutter/material.dart';
import 'package:projeto_social/drawer.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (c) {
              return MainScreen();
            },
          ),
        );
      },
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 7, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo_empresarial/logo_sem_fundo.png',
              width: 340,
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
