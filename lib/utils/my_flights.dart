import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class MyFlights extends StatelessWidget {
  const MyFlights({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'My Flights',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Gap(10),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 237, 235, 235),
                    border: Border.all(
                      color: const Color.fromARGB(255, 166, 163, 163),
                      width: 0.4,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          child: Row(
            children: [
              Icon(Icons.search, color: Colors.black),
              Gap(10),
              Icon(Icons.add_box_outlined)
            ],
          ),
        ),
      ],
    );
  }
}
