import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/routes.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 138, 60, 55),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  "SUSHI MAN",
                  style: GoogleFonts.dmSerifDisplay(
                    fontSize: 28,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(60.0),
                child: Image.asset("assets/imgs/sushi.png", scale: 0.6),
              ),

              Text(
                "THE TASTE OF JAPANESE FOOD",
                style: GoogleFonts.dmSerifDisplay(
                  fontSize: 44,
                  color: Colors.white,
                ),
              ),

              const SizedBox(height: 20,),
              
              Text("Feel the taste of the most popular Japanese food from anywhere and anytime", style: TextStyle(
                color: Colors.grey[300],
                fontSize: 18,
                height: 2,
              ),),

              const SizedBox(height: 40,),
              
              SizedBox(
                width: double.infinity,
                child: MyButton(title: "Get Started", onTap: () {
                  Navigator.pushReplacementNamed(context, AppRoutes.menu);
                }),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
