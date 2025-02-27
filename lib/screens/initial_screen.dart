import 'package:cafeteria/App_colors.dart';
import 'package:cafeteria/widgets/button.dart';
import 'package:flutter/material.dart';


class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Positioned.fill(
          child: Image.network(
            "https://wallpaper.forfun.com/fetch/f6/f648d41372491d50f5ff6f1291d5d099.jpeg?h=900&r=0.5",
            fit: BoxFit.cover,
          ),
        ),
        Positioned.fill(
          child: Center(
            child: Column(

              mainAxisAlignment: MainAxisAlignment.center,  // Para centralizar os itens verticalmente
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                Text("Coffe Shop",style: TextStyle(fontSize: 50,color: AppColors.beige,  shadows:[Shadow(
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.9),
                )]),),
                const SizedBox(height: 40,),
                Text("Enjoy the drink coffee .",style: TextStyle(fontSize: 20,color: AppColors.lightBeige, shadows:[Shadow(
                  offset: const Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Colors.black.withOpacity(0.9),
                )]),),

               SizedBox(height: 80,),

                 Button(TextBut: "Shop Now",),

              ],


            ),
          ),
        )
      ]),
    );
  }
}

void main() {
  runApp(const TelaInicial());
}
