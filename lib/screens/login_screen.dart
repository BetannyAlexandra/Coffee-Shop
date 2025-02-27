import 'package:cafeteria/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../App_colors.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    

    double ScreenWidth = MediaQuery.of(context).size.width;
    double ScreenHeight = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.lightBeige,
      
      body: Positioned(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal:  ScreenWidth * 0.1, vertical: ScreenHeight * 0.3),
            child: Column(
              children: [
                SizedBox(
                  child: Image.asset("assets/images/logo.png",width: ScreenWidth * 0.2,height:  ScreenHeight * 0.2,),
                ),

                 const Column(


                  children: [
                    Text(
                      "Welcome Back!",
                      style: TextStyle(
                        fontSize: 30,
                        color: AppColors.darkBrown,
                        fontFamily: "Roboto",

                      ),

                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: ScreenWidth*0.8,

                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "E-mail",

                      labelStyle: TextStyle(
                        color: AppColors.darkBrown,
                        fontSize: 25,
                      ),
                      enabledBorder: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: AppColors.darkBrown,
                              width: 3.0,
                          )
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: AppColors.darkBrown,
                            width: 3.0,
                          )
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: ScreenHeight * 0.09,
                ),

                SizedBox(
                  width: ScreenWidth*0.8,
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Senha",
                      labelStyle: TextStyle(

                        color: AppColors.darkBrown,
                        fontSize: 25,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                            color: AppColors.darkBrown,
                            width: 3.0,
                          )
                      )
                      ,focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: AppColors.darkBrown,
                        width: 3.0,
                      )
                    )

                    ),
                  ),
                )
                ,
                SizedBox(
                  height: ScreenHeight * 0.05,
                ),
                Button(TextBut: "Login",),
                SizedBox(
                  height: ScreenHeight * 0.09,
                ),
                TextButton(onPressed: (){},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Cor de fundo
                   ),
                  child:Text("Esqueceu sua Senha?",style: TextStyle(color: AppColors.darkBrown),)
                  ,),

                TextButton(onPressed: (){},

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Cor de fundo
                  ),
                  child:Text("Criar uma conta",style: TextStyle(color: AppColors.darkBrown),)
                  ,)

              ],
            ),
          )),
    );
  }
}
