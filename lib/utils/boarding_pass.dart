import 'package:booking_app/utils/boardging_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';

class BoardingPass extends StatelessWidget {
  const BoardingPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const SizedBox(
          child: Row(
            children: [
              IconTextComponent(
                icon: Icons.airplane_ticket,
                text: 'Boarding Pass',
              ),
              Gap(10),
              IconTextComponent(
                icon: Icons.facebook,
                text: 'Share trip',
              ),
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 235, 235),
            border: Border.all(
              color: const Color.fromARGB(255, 166, 163, 163),
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Icon(Icons.more_horiz, color: Colors.black),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
