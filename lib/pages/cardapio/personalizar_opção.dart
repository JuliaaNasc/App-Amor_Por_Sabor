import 'package:flutter/material.dart';

class PersonalizarOpcaoScreen extends StatelessWidget {
  const PersonalizarOpcaoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PARABÉNS',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
