import 'package:advice/sections/observations/presentation/screens/add_observation_page.dart';
import 'package:advice/sections/observations/presentation/screens/observation_camera_page.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddObservationMainPage extends StatefulWidget {
  const AddObservationMainPage({super.key});

  @override
  State<AddObservationMainPage> createState() => _AddObservationMainPageState();
}

class _AddObservationMainPageState extends State<AddObservationMainPage> {
  int page = 1;
  String? imageUrl;
  XFile? imageFiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: page == 1
          ? ObservationCameraPage(
              imageUrl: imageUrl,
              onNextClick: (String url, XFile? file) {
                setState(() {
                  imageUrl = url;
                  imageFiles = file;
                  page = 2;
                });
              },
            )
          : AddObservationPage(
              imageUrl: imageUrl,
              imageFiles: imageFiles,
            ),
    );
  }
}
