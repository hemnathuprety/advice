import 'package:flutter/material.dart';

class CircularButton extends StatelessWidget {
  const CircularButton(
      {super.key, required this.image, required this.onPressed});

  final ImageProvider image;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
          height: 36,
          width: 36,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: Image(
            image: image,
            fit: BoxFit.contain,
          )),
    );
  }
}
