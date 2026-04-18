import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/sushi.dart';

class FoodTile extends StatelessWidget {
  final Sushi sushi;
  const FoodTile({super.key, required this.sushi});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),

      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(sushi.img),
          ),

          Text(
            sushi.name,
            style: GoogleFonts.dmSerifDisplay(fontSize: 18),
          ),

          const SizedBox(height: 10),

          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("\$${sushi.price}", style: TextStyle(fontSize: 16, color: Colors.grey[1000])),

              SizedBox(width: 40),

              Row(
                children: [
                  Icon(Icons.star, color: Colors.orange),
                  Text("${sushi.rating}", style: TextStyle(fontSize: 16, color: Colors.grey[400])),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
