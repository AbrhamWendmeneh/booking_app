import 'package:flutter/material.dart';

class ImageStack extends StatelessWidget {
  final String imagePath;
  final double bottom;
  final double left;
  final double right;
  final Alignment alignment;
  final EdgeInsets padding;
  final Widget child;
  final double height;

  const ImageStack({
    super.key,
    required this.imagePath,
    this.bottom = 10,
    this.left = 0,
    this.right = 0,
    this.alignment = Alignment.topCenter,
    this.height = 400,
    this.padding = const EdgeInsets.symmetric(horizontal: 10),
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Container(
            height: height,
            width: double.infinity,
            decoration: BoxDecoration(
              // color: Colors.blue,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imagePath),
              ),
            ),
          ),
          Positioned(
            bottom: bottom,
            left: left,
            right: right,
            child: Align(
              alignment: alignment,
              child: Padding(
                padding: padding,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: child,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
