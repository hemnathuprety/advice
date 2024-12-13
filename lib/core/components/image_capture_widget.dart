import 'dart:io';

import 'package:camera/camera.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ImageCaptureWidget extends StatelessWidget {
  const ImageCaptureWidget({
    super.key,
    this.file,
    this.onRemoveClock,
    this.width = 160,
  });

  final XFile? file;
  final VoidCallback? onRemoveClock;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
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
                    height: 140,
                    child: file == null
                        ? const Icon(
                            FeatherIcons.image,
                            color: Colors.grey,
                            size: 40,
                          )
                        : ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.file(
                              fit: BoxFit.cover,
                              File(file!.path),
                            ),
                          ),
                  ),
                ),
              ),
            ),
          ),
          onRemoveClock == null
              ? SizedBox()
              : Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 2.0,
                      horizontal: 4,
                    ),
                    child: IconButton(
                      onPressed: onRemoveClock,
                      icon: Icon(
                        FeatherIcons.xCircle,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
        ],
      ),
    );
  }
}
