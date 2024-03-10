import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class BoardingClose extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const BoardingClose({Key? key});

  @override
  Widget build(BuildContext context) {
    double containerHeight = MediaQuery.of(context).size.height *
        0.15; // Adjust the factor as needed

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: IntrinsicWidth(
        child: Container(
          height: containerHeight,
          decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(
              width: 0.5,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Boarding closes in 00:30',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text('On time',
                        style: TextStyle(fontSize: 12, color: Colors.white)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: containerHeight / 1.9,
                  width: containerHeight,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.collections_bookmark_outlined,
                              color: Colors.white),
                          Gap(5),
                          Text(
                            'T20',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
