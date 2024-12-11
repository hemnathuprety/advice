import 'dart:developer';

import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/components/circle_container_view.dart';
import 'package:advice/core/components/image_capture_widget.dart';
import 'package:advice/core/components/loading_screen.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/observations/blocs/observation_image_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:image_picker/image_picker.dart';

late List<CameraDescription> _cameras;

class ObservationCameraPage extends StatefulWidget {
  const ObservationCameraPage({
    super.key,
    required this.imageUrl,
    required this.onNextClick,
  });

  final String? imageUrl;
  final Function(String, XFile?) onNextClick;

  @override
  State<ObservationCameraPage> createState() => _ObservationCameraPageState();
}

class _ObservationCameraPageState extends State<ObservationCameraPage> {
  CameraController? controller;
  final ImagePicker _picker = ImagePicker();

  XFile? imageFiles;

  @override
  void initState() {
    super.initState();
    initCamera();
  }

  Future<void> initCamera() async {
    _cameras = await availableCameras();
    controller = CameraController(_cameras[0], ResolutionPreset.max);
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
    return BlocProvider(
      create: (context) => getIt<ObservationImageBloc>(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
        ),
        body: BlocConsumer<ObservationImageBloc, ObservationImageState>(
          listener: (context, state) {
            state.when(
              success: (isLoading, hasError, isSuccess, errorMsg, imageUrl) {
                if (state.isLoading) {
                  LoadingScreen.instance()
                      .show(context: context, text: context.loc.loading);
                } else {
                  LoadingScreen.instance().hide();
                }

                if (isSuccess) {
                  widget.onNextClick(imageUrl, imageFiles);
                }
              },
            );
          },
          builder: (context, state) {
            return Stack(
              children: [
                SizedBox(
                  width: size.width,
                  height: size.height,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: SizedBox(
                        width: size.width,
                        // the actual width is not important here
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
                            "Add Observations Images",
                            style: theme.titleMedium?.copyWith(
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
                              color: imageFiles == null
                                  ? AppColors.borderNeutralColor
                                  : AppColors.primary,
                              textColor: imageFiles == null
                                  ? AppColors.primaryTextColor
                                  : AppColors.primaryTextColorLight,
                              onPressed: () async {
                                if (imageFiles != null) {
                                  context.read<ObservationImageBloc>().add(
                                        ObservationImageEvent.uploaded(
                                          imageFiles!,
                                        ),
                                      );
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
                    height: 160,
                    margin: EdgeInsets.only(bottom: 124),
                    child: ImageCaptureWidget(
                      file: imageFiles,
                      onRemoveClock: () {
                        setState(() {
                          imageFiles = null;
                        });
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
                        _takePicture();
                      },
                      backgroundColor: Colors.red,
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
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 32.0),
                    child: InkWell(
                      onTap: _pickPicture,
                      child: CircleContainerView(
                        width: 48,
                        height: 48,
                        // Change color as needed
                        borderRadius: 16,
                        child: Center(
                          child: SizedBox(
                            width: double.infinity,
                            height: 160,
                            child: Icon(
                              FeatherIcons.filePlus,
                              color: Colors.grey,
                              size: 32,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  // Method to take a picture
  void _takePicture() async {
    try {
      final XFile? picture = await controller?.takePicture();
      imageFiles = picture;
      setState(() {});
    } catch (e) {
      log("Error taking picture: $e");
    }
  }

  void _pickPicture() async {
    log("Error taking picture:");
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
      );
      imageFiles = pickedFile;
      setState(() {});
    } catch (e) {
      log("Error taking picture: $e");
    }
  }
}
