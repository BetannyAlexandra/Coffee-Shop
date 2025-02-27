import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../App_colors.dart';

class Button extends StatelessWidget {
  Button({super.key, required this.TextBut});

  final String TextBut;

  @override
  Widget build(BuildContext context) {
    double ScreenWidth = MediaQuery.of(context!).size.width;
    double ScreenHeight = MediaQuery.of(context!).size.width;

    return SizedBox(
      width: ScreenWidth * 0.8,
      height: ScreenHeight * 0.13,

      child: ElevatedButton(

        onPressed: () {
          if (kDebugMode) {
            print("Botão pressionado!");
          }
        },
        style: ElevatedButton.styleFrom(

          backgroundColor: AppColors.darkBrown, // Cor de fundo
          foregroundColor: AppColors.lightBeige,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

          elevation: 10,
        ),
        child: Text(
          TextBut,
          style:  TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
