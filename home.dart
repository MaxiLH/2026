import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
   static const String name = 'home';
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const 
    Scaffold(
      body: Center(child: 
      SizedBox(height: 50, 
      child: Text('Bienvenido', style: TextStyle(fontSize: 40),))
      ),
    );
  }
}