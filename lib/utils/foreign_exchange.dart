import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ForeignExchange extends StatelessWidget {
  const ForeignExchange({super.key});

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
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Foreign Exchange',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Travelx', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_up_rounded,
                          color: Colors.black),
                    ],
                  ),
                ],
              ),
              Text(
                'Termial 1',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 168, 168),
                ),
              ),
              Text(
                'Aside Dept Downtown, Concourse B',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 168, 168),
                ),
              ),
              Text(
                'Termial 3, beside Winston Smoking room',
                style: TextStyle(
                  color: Color.fromARGB(255, 172, 168, 168),
                ),
              ),
              Gap(20),
              Divider(
                thickness: 0.1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Travelx', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    ],
                  ),
                ],
              ),
              Gap(20),
              Divider(
                thickness: 0.1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
              Gap(20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text('Emirates NBD',
                          style: TextStyle(color: Colors.black)),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.keyboard_arrow_down, color: Colors.black),
                    ],
                  ),
                ],
              ),
              Gap(20),
              
            ],
          ),
        ),
      ),
    );
  }
}
