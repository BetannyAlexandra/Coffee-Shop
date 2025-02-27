import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../App_colors.dart';

class ButtonOutline extends StatelessWidget {
  const ButtonOutline({super.key, required this.TextBut, required this.onPressed});

  final String TextBut;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onPressed: onPressed;
      },
      style: ElevatedButton.styleFrom(
        fixedSize: const Size(300, 50),
        backgroundColor: Colors.transparent, // Cor de fundo
        foregroundColor: AppColors.lightBeige,
        side: const BorderSide(color: AppColors.lightBeige, width:2 ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20),),

        elevation: 10,
      ),
      child: Text(
        TextBut,
        style:  const TextStyle(
          fontSize: 18,
        ),
      ),
    );
  }
}
