import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ShowDate extends StatelessWidget {
  const ShowDate({super.key});

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
          child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Mon, 20 DEC 24',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 237, 235, 235),
                                  border: Border.all(
                                    color: const Color.fromARGB(
                                        255, 166, 163, 163),
                                    width: 0.4,
                                  ),
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Icon(Icons.airplane_ticket_sharp,
                                      color: Colors.black),
                                ),
                              ),
                              const Gap(10),
                              const Text('6E725',
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Gap(10),
                  LayoutBuilder(
                      builder: (BuildContext, BoxConstraints constraints) {
                    return Flex(
                      direction: Axis.horizontal,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        (constraints.constrainWidth() / 15).floor(),
                        (index) => const SizedBox(
                          width: 5,
                          height: 1,
                          child: DecoratedBox(
                              decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 155, 148, 148))),
                        ),
                      ),
                    );
                  }),
                  const Gap(10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(
                          text: const TextSpan(
                        children: [
                          TextSpan(
                            text: 'DEL',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          TextSpan(
                            text: ' 08:15',
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      )),
                      const Text('2h 5m'),
                      const Text('10:15 BOM'),
                    ],
                  ),
                  const Gap(5),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            SizedBox(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/image4.png',
                                ),
                                height: 20,
                                width: 20,
                              ),
                            ),
                            Text(' New Delhi',
                                style: TextStyle(color: Colors.black)),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            Text('New Delhi ',
                                style: TextStyle(color: Colors.black)),
                            SizedBox(
                              child: Image(
                                image: AssetImage(
                                  'assets/images/image4.png',
                                ),
                                height: 20,
                                width: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Gap(10),
                ],
              )),
        ));
  }
}
