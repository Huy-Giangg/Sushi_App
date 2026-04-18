import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sushi_app/components/button.dart';
import 'package:sushi_app/theme/colors.dart';

import '../models/sushi.dart';


class FoodDetailsPage extends StatefulWidget {
  const FoodDetailsPage({super.key});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {

  int sl = 1;

  @override
  Widget build(BuildContext context) {
    final sushi = ModalRoute.of(context)!.settings.arguments as Sushi;
    double price = double.parse(sushi.price);
    double curentTotal = price * sl;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(child: Image.asset(sushi.img)),

                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.orange),
                      Text(
                        "${sushi.rating}",
                        style: TextStyle(fontSize: 16, color: Colors.grey[400]),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "${sushi.name}",
                    style: GoogleFonts.dmSerifDisplay(fontSize: 28),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Description",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  ),

                  const SizedBox(height: 20),

                  Text(
                    "Delicately sliced, fresh Atlantic salmon drapes elegantly over a pillow of perfectly seasoned sushi rice. Its vibrant hue and buttery texture promise an exquisite melt-in-your-mouth experience. Paired with a whisper of wasabi and a side of traditional pickled ginger, our salmon sushi is an ode to the purity and simplicity of authentic Japanese flavors of authentic Japanese flavors. of authentic Japanese flavors. of authentic Japanese flavors. of authentic Japanese flavors. of authentic Japanese flavors..",
                    style: TextStyle(fontSize: 16, color: Colors.grey[500]),
                  ),
                ],
              ),
            ),

            Expanded(
              child: Container(
                color: primaryColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "\$${curentTotal.toString()}",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),

                        Row(
                          children: [
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color.fromARGB(109, 140, 94, 91,),
                                padding: const EdgeInsets.all(20.0),
                              ),
                              onPressed: (){
                                DecrementTotal();
                              },
                              child: Icon(Icons.remove, color: Colors.white)
                            ),


                            const SizedBox(width: 20),

                            Text(
                              "${sl}",
                              style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                              ),
                            ),

                            const SizedBox(width: 20),

                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color.fromARGB(109, 140, 94, 91,),
                                  padding: const EdgeInsets.all(20.0),
                                ),
                                onPressed: (){
                                  IncrementTotal();
                                },
                                child: Icon(Icons.add, color: Colors.white)
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    SizedBox(
                      width: 400,
                      child: MyButton(title: "Add to Cart", onTap: () {}),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void IncrementTotal(){
    setState(() {
      sl+=1;
    });
  }

  void DecrementTotal(){
    setState(() {
      if (sl > 1) {
        sl--;
      }
    });
  }
}


