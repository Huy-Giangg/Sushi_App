import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const MyButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(109, 140, 94, 91),
        padding: const EdgeInsets.all(20.0),
      ),
      onPressed: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: TextStyle(color: Colors.grey[300], fontSize: 18)),
          const SizedBox(width: 6,),
          Icon(Icons.arrow_forward, color: Colors.grey[300]),
        ],
      ),
    );
  }
}
