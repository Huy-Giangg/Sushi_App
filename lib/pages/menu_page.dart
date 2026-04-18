import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';

import '../components/food_tile.dart';
import '../models/sushi.dart';
import '../routes.dart';
import '../theme/colors.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List<Sushi> list = Sushi.sushiMenu;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          "Tokyo",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),

      drawer: Drawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Get 35% Promo",
                          style: GoogleFonts.dmSerifDisplay(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),

                        const SizedBox(height: 20),

                        MyButton(title: "Redeem", onTap: () {}),
                      ],
                    ),

                    Image.asset("assets/imgs/sushi_2.png", scale: 1.2,),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10),
                    border: InputBorder.none,
                    hintText: "Search for sushi...",
                  ),
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: const Text(
                  "Food Menu",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 24),
                  textAlign: TextAlign.start,
                ),
              ),

              const SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: list.length,
                    itemBuilder: (context, index){
                      return InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, AppRoutes.detail, arguments: list[index]);
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                            child: FoodTile(sushi: list[index])),
                      );
                    }
                ),
              ),
              
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      
                      borderRadius: BorderRadius.circular(20.0)
                    ),
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 20,),

                        Image.asset("assets/imgs/sushi.png"),

                        const SizedBox(width: 20,),
                        
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Salmon Eggs", style: GoogleFonts.dmSerifDisplay(fontSize: 18),),

                            Text("\$21.00", style: TextStyle(fontSize: 16, color: Colors.grey[1000])),
                          ],
                        )
                        
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
