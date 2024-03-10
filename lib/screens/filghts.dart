import 'package:booking_app/screens/flight_util.dart';
import 'package:booking_app/utils/boarding_close.dart';
import 'package:booking_app/utils/boarding_pass.dart';
import 'package:booking_app/utils/date.dart';
import 'package:booking_app/utils/image_stack.dart';
import 'package:booking_app/utils/my_flights.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Flights extends StatelessWidget {
  const Flights({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: const [
        ImageStack(
          imagePath: 'assets/images/image3.jpg',
          bottom: 100,
          left: 20,
          
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: 250,
          child: FlightsUtil(),
        ),
         Gap(20),
        MyFlights(),
        Gap(20),
        ShowDate(),
        Gap(20),
        BoardingClose(),
        Gap(20),
        BoardingPass(),
        Gap(20),

      ]),
    );
  }
}
