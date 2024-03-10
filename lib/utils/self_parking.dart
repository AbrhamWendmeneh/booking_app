import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SelfParking extends StatelessWidget {
  const SelfParking({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 151, 150, 150),
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child:  Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Self Parking',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Gap(20),
                Row(
              
                  children: [
                    _buildContainer('T1', Colors.white, Colors.black, true),
                    const Gap(20),
                    _buildContainer('T2', Colors.black,
                        const Color.fromARGB(236, 196, 196, 196), false),
                  ],
                ),
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.directions_bike_sharp, color: Colors.black),
                        Gap(5),
                        Text('Two Wheeler'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('AED 50/DAY'),
                        Icon(Icons.info_outline,
                            color: Color.fromARGB(255, 158, 154, 154)),
                      ],
                    ),
                  ],
                ),
                const Gap(20),
               const  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.local_taxi, color: Colors.black),
                        Gap(5),
                        Text('Car Parking'),
                      ],
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Text('AED 100/DAY'),
                        Icon(Icons.info_outline,
                            color: Color.fromARGB(255, 158, 154, 154)),
                      ],
                    ),
                  ],
                ),
                const Gap(20),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.electric_car, color: Colors.black),
                        Gap(5),
                        Text('Electric Car Parking'),
                      ],
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Text('AED 100/DAY'),
                        Icon(Icons.info_outline,
                            color: Color.fromARGB(255, 158, 154, 154)),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }

  Widget _buildContainer(String text, Color textColor, Color bgColor, bool isBlack) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: isBlack ? Colors.black : bgColor,
        borderRadius: BorderRadius.circular(10),
        
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
