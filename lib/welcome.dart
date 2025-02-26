import 'package:flutter/material.dart';
import 'package:projeto_social/drawer.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 36, 7, 1),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/logo_empresarial/logo_sem_fundo.png',
            width: 380,
          ),
          const SizedBox(height: 50),
          SizedBox(
            width: 160,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (c) {
                  return const MainScreen();
                }));
              },
              child: const Text(
                'Entrar',
                style: TextStyle(
                  color: Color.fromARGB(255, 36, 7, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
