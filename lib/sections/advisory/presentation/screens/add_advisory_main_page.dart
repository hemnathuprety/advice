import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:advice/sections/advisory/presentation/screens/add_advisory_page.dart';
import 'package:advice/sections/advisory/presentation/screens/advisory_camera_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class AddAdvisoryMainPage extends StatefulWidget {
  const AddAdvisoryMainPage({super.key});

  @override
  State<AddAdvisoryMainPage> createState() => _AddAdvisoryMainPageState();
}

class _AddAdvisoryMainPageState extends State<AddAdvisoryMainPage> {
  int page = 1;
  XFile? imageFiles;

  @override
  Widget build(BuildContext context) {
    return page == 1
        ? AdvisoryCameraPage(
            imageFiles: imageFiles,
            onAddNewFile: (XFile? picture) {
              setState(() {
                imageFiles = picture;
              });
            },
            onRemoveNewFile: () {
              setState(() {
                imageFiles = null;
              });
            },
            onNextClick: () {
              setState(() {
                page = 2;
              });
            },
          )
        : AddAdvisoryPage(
            imageFiles: imageFiles,
            onAddClick: () {
              log("page $page");
              setState(() {
                page = 1;
              });
            },
          );
  }
}
