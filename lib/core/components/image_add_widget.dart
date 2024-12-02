import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ImageAddWidget extends StatelessWidget {
  const ImageAddWidget({
    super.key,
    this.width = 180,
    required this.onAddClock,
  });

  final double width;
  final VoidCallback? onAddClock;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: onAddClock,
              child: DottedBorder(
                borderType: BorderType.RRect,
                radius: const Radius.circular(10),
                dashPattern: const [10, 4],
                strokeCap: StrokeCap.round,
                color: Colors.green,
                // Change color as needed
                child: Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 160,
                    child: const Icon(
                      FeatherIcons.filePlus,
                      color: Colors.grey,
                      size: 40,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
