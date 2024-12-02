import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LocationSelection extends StatelessWidget {
  const LocationSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 43.70,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: Color(0xFFE6E6E6)),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/svg/location.svg'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Select Location',
                style: TextStyle(
                  color: Color(0xFFAAAAAA),
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/svg/arrow-down.svg'),
          ),
        ],
      ),
    );
  }
}
