import 'package:flutter/material.dart';

class Ways extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Ways({Key? key});

  @override
  Widget build(BuildContext context) {
    
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildContainer('Transport', Colors.white, Colors.white, true),
        _buildContainer('Terminal', Colors.black, const Color.fromARGB(236, 196, 196, 196), false),
        _buildContainer('Forex', Colors.black, const Color.fromARGB(236, 196, 196, 196), false),
        _buildContainer('Contact-info', Colors.black, const Color.fromARGB(236, 196, 196, 196), false),
      ],
    );
  }

  Widget _buildContainer(String text, Color textColor, Color bgColor, bool isBlack) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isBlack ? Colors.black : bgColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Text(
          text,
          style: TextStyle(color: textColor),
        ),
      ),
    );
  }
}
