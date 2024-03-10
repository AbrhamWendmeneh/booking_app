import 'package:flutter/material.dart';

class IconTextComponent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconTextComponent({
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 220, 216, 216),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 199, 193, 193).withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: MediaQuery.of(context).size.width * 0.05),
          SizedBox(width: MediaQuery.of(context).size.width * 0.01),
          Text(text,
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width * 0.03)),
        ],
      ),
    );
  }
}
