import 'package:flutter/material.dart';

class FlightsUtil extends StatelessWidget {
   const FlightsUtil({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: BorderPainter(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white, // Set your desired background color here
          borderRadius: BorderRadius.circular(20), // Same radius as used in the CustomPainter
        ),
        child: Container(
          padding: const EdgeInsets.all(10),
          height: 100,
          width: double.infinity,
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/images/profile-pic.webp'),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Flights', style: TextStyle(color: Colors.grey)),
                  Text('04', style: TextStyle(color: Colors.black, fontSize: 20)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Countries', style: TextStyle(color: Colors.grey)),
                  Text('06', style: TextStyle(color: Colors.black, fontSize: 20)),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Distance', style: TextStyle(color: Colors.grey)),
                  Text('4,287 km',
                      style: TextStyle(color: Colors.black, fontSize: 20)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    const double radius = 25;


    final Path path = Path()
      ..moveTo(radius, 0) // Move to top-left corner
      ..quadraticBezierTo(0, 0, 0, radius) // Draw top-left corner
      ..moveTo(size.width, size.height - radius) // Move to bottom-right corner
      ..quadraticBezierTo(size.width, size.height, size.width - radius,
          size.height); // Draw bottom-right corner

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
