import 'package:cafeteria/App_colors.dart';
import 'package:cafeteria/screens/initial_screen.dart';
import 'package:cafeteria/screens/login_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home page"),
        backgroundColor: AppColors.beige,
      ),
      body: PageView(
        children: [
          Column(
            children: [
              Container(
                width: double.infinity,
                height: 130,
                color: AppColors.beige,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(left: 20),
                child: const Text(
                  "What would you like\nto drink today?",
                  style: TextStyle(
                      color: AppColors.darkBrown,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3.0),
                  width: double.infinity,
                  height: 30,
                  color: AppColors.beige,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
children: [ List.generate(length, generator)],


                  ))
            ],
          ),
          const TelaInicial(),
          const LoginScreen()
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart_outlined),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline),
          label: "",
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.favorite_outline),
        //   label: "Item 4",
        // ),
      ]),
    );
  }



  Widget construirContainer( String text, VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: 90,
        height: 5,
        decoration: BoxDecoration(
            color: AppColors.lightBeige,
            borderRadius: BorderRadius.circular(15)),
        child: Padding(

          padding:  EdgeInsets.all(2.0),
          child: Text(
text,
            textAlign: TextAlign.center,

            style: TextStyle(
              color: AppColors.darkBrown,
            ),
          ),
        ),
      ),
    );




  }
}
