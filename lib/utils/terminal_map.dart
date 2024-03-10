import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TerminalMap extends StatelessWidget {
  const TerminalMap({super.key});

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Terminal Map',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Gap(20),
                Row(
                  children: [
                    _buildContainer('T1', Colors.white, Colors.black, true),
                    const Gap(20),
                    _buildContainer('T2', Colors.black,
                        const Color.fromARGB(236, 196, 196, 196), false),
                    const Gap(20),
                    _buildContainer('T3', Colors.black,
                        const Color.fromARGB(236, 196, 196, 196), false),
                  ],
                ),
                const Gap(20),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    LayoutBuilder(
                      builder: (context, constraints) {
                        return AspectRatio(
                          aspectRatio: 16 / 6,
                          child: Image.asset(
                            'assets/images/image2.jpg',
                            width: constraints.maxWidth,
                            fit: BoxFit.fitWidth,
                          ),
                        );
                      },
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )),
                      child: const Text('View',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ));
  }

  Widget _buildContainer(
      String text, Color textColor, Color bgColor, bool isBlack) {
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
