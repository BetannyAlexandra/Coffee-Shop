import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({super.key, required this.TextBut});

  final String TextBut;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        print("Botão pressionado!");
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.brown, // Cor de fundo
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
        elevation: 10,
      ),
      child: Text(
        TextBut,
        style: TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
