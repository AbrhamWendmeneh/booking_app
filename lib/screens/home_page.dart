// I am working on airplane ticket booking app. I want to display the home page of the app. I have created a home page and added the app bar and a list view. I want to display the airport name and country name in the list view. I have added the code to display the airport name and country name. But I am getting an error. Can someone help me to fix the error?
import 'package:booking_app/utils/button.dart';
import 'package:booking_app/utils/contact_airport.dart';
import 'package:booking_app/utils/foreign_exchange.dart';
import 'package:booking_app/utils/image_stack.dart';
import 'package:booking_app/utils/lay_out.dart';
import 'package:booking_app/utils/list_ways.dart';
import 'package:booking_app/utils/public_transport.dart';
import 'package:booking_app/utils/self_parking.dart';
import 'package:booking_app/utils/taxi_service.dart';
import 'package:booking_app/utils/terminal_map.dart';
import 'package:flutter/material.dart';

import 'package:gap/gap.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Dubai Airport-DXB',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
        ),
        Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: const Row(
                children: [
                  Text('Dubai'),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: SizedBox(
                      width: 20,
                      height: 10,
                      child: Image(
                        image: AssetImage(
                          'assets/images/image4.png',
                        ),
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                  Text('United Arab Emirates'),
                ],
              ),
            ),
            const Gap(20),
            const ImageStack(
              imagePath: 'assets/images/image1.webp',
              child: ImageUtil(),
            ),
            const Gap(20),
            const Ways(),
            const Gap(20),
            const Taxi(),
            const Gap(20),
            const PublicTransport(),
            const Gap(20),
            const SelfParking(),
            const Gap(20),
            const TerminalMap(),
            const Gap(20),
            const ForeignExchange(),
            const Gap(20),
            const ContanctAirport(),
            const Gap(20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 4),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Button(
                      iconData: Icons.directions, buttonText: 'Get direction'),
                  Button(iconData: Icons.phone, buttonText: 'Call airport'),
                ],
              ),
            ),
            const Gap(20),
          ],
        ),
      ]),
    );
  }
}
