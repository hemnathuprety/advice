import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/components/circle_container_view.dart';
import 'package:advice/core/components/image_capture_widget.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

late List<CameraDescription> _cameras;

class AdvisoryCameraPage extends StatefulWidget {
  const AdvisoryCameraPage({
    super.key,
    required this.imageFiles,
    required this.onNextClick,
    required this.onAddNewFile,
    required this.onRemoveNewFile,
  });

  final List<XFile?> imageFiles;
  final Function(int) onNextClick;
  final Function(XFile?) onAddNewFile;
  final Function(int) onRemoveNewFile;

  @override
  State<AdvisoryCameraPage> createState() => _AdvisoryCameraPageState();
}

class _AdvisoryCameraPageState extends State<AdvisoryCameraPage> {
  CameraController? controller;

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  Future<void> initCamera() async {
    _cameras = await availableCameras();
    controller = CameraController(_cameras[1], ResolutionPreset.max);
    controller?.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final size = MediaQuery.of(context).size;

    if (controller == null) {
      return Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
      ),
      body: Stack(
        children: [
          SizedBox(
            width: size.width,
            height: size.height,
            child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                  width: size.width, // the actual width is not important here
                  child: CameraPreview(controller!)),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 60.0,
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: CircleContainerView(
                      width: 40,
                      height: 40,
                      borderColor:
                          AppColors.borderNeutralColor.withOpacity(0.5),
                      child: IconButton(
                        onPressed: () {
                          AutoRouter.of(context).popUntilRoot();
                        },
                        padding: EdgeInsets.all(0),
                        iconSize: 24,
                        icon: Icon(
                          FeatherIcons.chevronLeft,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Capture Images",
                      style: theme.titleLarge?.copyWith(
                        color: AppColors.primaryTextColorLight,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: 68,
                      child: AppFilledButton(
                        title: "Next",
                        color: widget.imageFiles.isEmpty
                            ? AppColors.borderNeutralColor
                            : AppColors.primary,
                        textColor: widget.imageFiles.isEmpty
                            ? AppColors.primaryTextColor
                            : AppColors.primaryTextColorLight,
                        onPressed: () async {
                          if (widget.imageFiles.isNotEmpty) {
                            var options =
                                await DialogUtils.showCloserOptionsDialog(
                                    context);
                            if (options != null) {
                              widget.onNextClick(options);
                            }
                          }
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 180,
              margin: EdgeInsets.only(bottom: 124),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: widget.imageFiles.length > 3
                    ? widget.imageFiles.length
                    : 3,
                itemBuilder: (BuildContext context, int index) {
                  if (widget.imageFiles.length > index) {
                    var imageFile = widget.imageFiles[index];
                    return ImageCaptureWidget(
                      file: imageFile,
                      onRemoveClock: () {
                        widget.onRemoveNewFile(index);
                      },
                    );
                  }
                  return ImageCaptureWidget();
                },
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: FloatingActionButton.large(
                onPressed: () {
                  if (widget.imageFiles.length < 5) {
                    _takePicture();
                  }
                },
                backgroundColor: widget.imageFiles.length < 5
                    ? Colors.red
                    : AppColors.borderNeutralColor,
                foregroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 4,
                    color: AppColors.surfaceNeutralColor,
                  ),
                  borderRadius: BorderRadius.circular(100),
                ),
                child: null,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Method to take a picture
  void _takePicture() async {
    try {
      final XFile? picture = await controller?.takePicture();
      widget.onAddNewFile(picture);
    } catch (e) {
      log("Error taking picture: $e");
    }
  }
}
