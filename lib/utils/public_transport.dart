import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class PublicTransport extends StatelessWidget {
  const PublicTransport({super.key});

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
          child: const Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Public Transport',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Gap(20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.directions_train, color: Colors.black),
                        Gap(5), // Add some spacing between the icon and text
                        Text('Metro'),
                      ],
                    ),
                    Row(
                      children: [
                        Text('6am-10pm'),
                        Gap(5), // Add some spacing between the text and icon
                        Icon(Icons.arrow_forward, color: Colors.black),
                      ],
                    ),
                  ],
                ),
                Gap(20),
                Divider(
                  // height: 2,
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
                        Icon(Icons.directions_bus, color: Colors.black),
                        Gap(5), // Add some spacing between the icon and text
                        Text('Bus'),
                      ],
                    ),
                    Gap(5),
                    Row(
                      children: [
                        Text('available 24hrs'),
                        Gap(5), // Add some spacing between the text and icon
                        Icon(Icons.arrow_forward, color: Colors.black),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
