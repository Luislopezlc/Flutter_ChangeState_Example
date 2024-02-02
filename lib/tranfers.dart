import 'package:flutter/material.dart';

class Transfers extends StatelessWidget {
  const Transfers({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Esta es la vista de transferencias", style: TextStyle(fontSize: 30),),
      ],
    );
  }
}