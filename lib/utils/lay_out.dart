import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ImageUtil extends StatelessWidget {
  const ImageUtil({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: double.infinity,
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.cloudy_snowing,
                  color: Colors.black,
                ),
                Icon(
                  Icons.calendar_today_outlined,
                  fill: 1.0,
                  color: Colors.black,
                ),
                Icon(
                  Icons.watch_later_rounded,
                  color: Colors.black,
                ),
                Icon(
                  Icons.gif_box_sharp,
                  color: Colors.black,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('19 C', style: TextStyle(fontSize: 15)),
                Text('30 Jan', style: TextStyle(fontSize: 15)),
                Text('8:45 PM', style: TextStyle(fontSize: 15)),
                Text('AED', style: TextStyle(fontSize: 15)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('cloudy', style: TextStyle(fontSize: 10)),
                Text('Mon', style: TextStyle(fontSize: 10)),
                Text('GMT+4', style: TextStyle(fontSize: 10)),
                Text('1=20.02 INR', style: TextStyle(fontSize: 10)),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                // height: 2,
                thickness: 0.1,
                indent: 0,
                endIndent: 0,
                color: Colors.black,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.directions,
                      color: Colors.blue,
                    ),
                    Text(' Get Direction'),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.blue,
                    ),
                    Text(' Call airport'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
