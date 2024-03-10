import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final IconData iconData;
  final String buttonText;

  const Button({super.key, required this.iconData, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.4, // you may need to adjust this value
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 0, 0, 0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        child: Row(
          children: [
            Icon(iconData, color: Colors.white),
            Text(buttonText, style: const TextStyle(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

