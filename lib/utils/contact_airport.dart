import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ContanctAirport extends StatelessWidget {
  const ContanctAirport({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 151, 150, 150),
            width: 0.5,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Contact Airport',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('Police', style: TextStyle(color: Colors.black)),
                    ],
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              const Divider(
                thickness: 0.1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('Lost and found',
                          style: TextStyle(color: Colors.black)),
                    ],
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              const Divider(
                thickness: 0.1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('Transport', style: TextStyle(color: Colors.black)),
                    ],
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(20),
              const Divider(
                thickness: 0.1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              const Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text('Head office',
                          style: TextStyle(color: Colors.black)),
                    ],
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Row(
                        children: [
                          Icon(Icons.phone, color: Colors.black),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
