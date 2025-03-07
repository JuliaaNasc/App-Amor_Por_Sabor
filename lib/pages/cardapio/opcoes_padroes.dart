import 'package:flutter/material.dart';

class OpcoesPadroesScreen extends StatelessWidget {
  const OpcoesPadroesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'PARABÉNS VOCÊ CONSEGUIU',
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
