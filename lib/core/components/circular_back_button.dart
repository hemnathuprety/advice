import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CircularBackButton extends StatelessWidget {
  const CircularBackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Color(0xFFC9C9C9)),
            borderRadius: BorderRadius.circular(34),
          ),
        ),
        child: SvgPicture.asset('assets/svg/back.svg'),
      ),
    );
  }
}
