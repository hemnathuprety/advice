import 'dart:developer';

import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/components/app_outline_button.dart';
import 'package:advice/core/components/custom_select_menu_view.dart';
import 'package:advice/core/components/cutom_locations_text_field.dart';
import 'package:advice/core/components/date_picker_container.dart';
import 'package:advice/core/components/image_capture_widget.dart';
import 'package:advice/core/components/loading_screen.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/core/utils/toast_utility.dart';
import 'package:advice/sections/advisory/domain/entities/districts_entity.dart';
import 'package:advice/sections/advisory/domain/entities/roads_from_division_entity.dart';
import 'package:advice/sections/advisory/presentation/blocs/add_advisories_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAdvisoryPage extends StatefulWidget {
  const AddAdvisoryPage({
    super.key,
    required this.imageFiles,
    required this.onAddClick,
  });

  final XFile? imageFiles;
  final VoidCallback onAddClick;

  @override
  State<AddAdvisoryPage> createState() => _AddAdvisoryPageState();
}

class _AddAdvisoryPageState extends State<AddAdvisoryPage> {
  final TextEditingController dateController = TextEditingController();
  final TextEditingController latController = TextEditingController();
  final TextEditingController longController = TextEditingController();

  final TextEditingController selectProvinceController =
      TextEditingController();
  final TextEditingController selectDistrictsController =
      TextEditingController();
  final TextEditingController selectMunicipalityController =
      TextEditingController();

  final TextEditingController selectCropController = TextEditingController();
  final TextEditingController selectCropStageController =
      TextEditingController();
  final TextEditingController selectObservedConditionController =
      TextEditingController();
  final TextEditingController selectConditionController =
      TextEditingController();

  final TextEditingController selectWaterResourceController =
      TextEditingController();

  String selectedMunicipality = "";
  String selectedProvince = "";
  DistrictsData? selectedDistricts;
  String? selectedObservedCondition;
  bool isEnterManually = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    final viewWidth = MediaQuery.of(context).size.width - 32;
    return BlocProvider(
      create: (context) => getIt<AddAdvisoriesBloc>()
        ..add(const GetDivisionsList())
        ..add(const GetDistrictsList()),
      child: BlocConsumer<AddAdvisoriesBloc, AddAdvisoriesState>(
        listener: (context, state) {
          log('uploadStage: ${state.uploadStage ?? 0}');
          if (state.status == ViewStatus.loading) {
            LoadingScreen.instance().show(context: context);
          } else if (state.uploadStage != 2) {
            LoadingScreen.instance().hide();
          }
          if (state.status == ViewStatus.success && state.uploadStage == 2) {
            /*context.read<AddAdvisoriesBloc>().add(
                  UploadAdvisoryImages(
                      files: widget.imageFiles, id: state.roadClosureId ?? 0),
                );*/
          }

          if (state.status == ViewStatus.success && state.uploadStage == 3) {
            DialogUtils.showCustomAppDialog(
              context,
              "Submission Successful",
              "Your information has been submitted successfully! Thank you for completing the form.",
              "Ok",
              (result) {
                if (result) {
                  AutoRouter.of(context).popUntilRoot();
                }
              },
            );
          }

          if (state.status == ViewStatus.failure) {
            ToastUtility.showToast(
              context,
              "Submission Failed",
              "There was an error processing your request. Please try again later.",
            );
          }
        },
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: AppColors.primary,
              foregroundColor: AppColors.primaryTextColorLight,
              title: Text(
                "Add Observations Details",
                style: theme.titleLarge?.copyWith(
                  color: AppColors.primaryTextColorLight,
                ),
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surfaceNeutralColorLight,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [kDefaultCardShadow],
                ),
                child: Column(
                  children: [
                    CustomLocationsTextField(
                      latController: latController,
                      longController: longController,
                      isObscure: false,
                      fieldTitle: 'Enter Location:',
                      errorText: '',
                      titleField: true,
                      formValidator: (p0) {
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    AppOutlineButton(
                      title: "Enter Manually",
                      onClick: () {
                        isEnterManually = true;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    // if (isEnterManually)
                    CustomSelectMenuView(
                      onSelected: (p0) {},
                      controller: selectProvinceController,
                      titleText: "Province:",
                      hintText: "Select Province",
                      list: state.divisionsEntity.divisions!
                          .map<DropdownMenuEntry<String>>((dynamic value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      }).toList(),
                    ),
                    //if (isEnterManually)
                    CustomSelectMenuView(
                      onSelected: (p0) {
                        if (p0 is DistrictsData) {
                          setState(() {
                            selectedDistricts = p0;
                          });
                        }
                      },
                      controller: selectDistrictsController,
                      titleText: "District:",
                      hintText: "Select District",
                      list: state.districtsEntity.districtsEntity!
                          .map<DropdownMenuEntry<DistrictsData>>(
                              (DistrictsData value) {
                        return DropdownMenuEntry<DistrictsData>(
                          value: value,
                          label: value.districtName ?? "",
                        );
                      }).toList(),
                    ),
                    // if (isEnterManually)
                    CustomSelectMenuView(
                      onSelected: (p0) {},
                      titleText: "Municipality:",
                      hintText: "Select Municipality",
                      controller: selectMunicipalityController,
                      list: state.roadFromDivisionEntity
                          .map<DropdownMenuEntry<RoadsFromDivisionDataEntity>>(
                              (RoadsFromDivisionDataEntity value) {
                        return DropdownMenuEntry<RoadsFromDivisionDataEntity>(
                          value: value,
                          label: value.roadName ?? "",
                        );
                      }).toList(),
                    ),
                    CustomSelectMenuView(
                      onSelected: (p0) {},
                      titleText: "Crop:",
                      hintText: "Select Crop",
                      controller: selectCropController,
                      list: cropType
                          .map<DropdownMenuEntry<CropType>>((CropType value) {
                        return DropdownMenuEntry<CropType>(
                          value: value,
                          label: value.name,
                        );
                      }).toList(),
                    ),
                    CustomSelectMenuView(
                      onSelected: (p0) {},
                      titleText: "Crop Stage:",
                      hintText: "Select Crop Stage",
                      controller: selectCropStageController,
                      list: cropType
                          .map<DropdownMenuEntry<CropType>>((CropType value) {
                        return DropdownMenuEntry<CropType>(
                          value: value,
                          label: value.name,
                        );
                      }).toList(),
                    ),
                    CustomSelectMenuView(
                      onSelected: (p0) {
                        selectedObservedCondition = p0;
                        setState(() {});
                      },
                      titleText: "Observed Condition:",
                      hintText: "Select Observed Condition",
                      controller: selectObservedConditionController,
                      list: observedCondition
                          .map<DropdownMenuEntry<String>>((dynamic value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      }).toList(),
                    ),
                    if (selectedObservedCondition != null &&
                        selectedObservedCondition != "Other")
                      CustomSelectMenuView(
                        onSelected: (p0) {},
                        titleText: "$selectedObservedCondition:",
                        hintText: "Select $selectedObservedCondition",
                        controller: selectConditionController,
                        list: observedCondition
                            .map<DropdownMenuEntry<String>>((dynamic value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                          );
                        }).toList(),
                      ),
                    CustomSelectMenuView(
                      onSelected: (p0) {},
                      titleText: "Water Resource:",
                      hintText: "Select Water Resource",
                      controller: selectWaterResourceController,
                      list: waterResource
                          .map<DropdownMenuEntry<String>>((dynamic value) {
                        return DropdownMenuEntry<String>(
                          value: value,
                          label: value,
                        );
                      }).toList(),
                    ),
                    DatePickerContainer(
                      textController: dateController,
                      hintText: 'Enter Observed Date',
                      text: 'Observed Date:',
                      errorText: '',
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 16,
                      child: Text(
                        "Upload Images:",
                        style: theme.bodyMedium,
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    SizedBox(
                      height: 120,
                      child: ImageCaptureWidget(
                        file: widget.imageFiles,
                        width: 120,
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: viewWidth * 0.44,
                          child: AppFilledButton(
                            onPressed: () {},
                            color: AppColors.warningColor,
                            title: "Clear",
                          ),
                        ),
                        SizedBox(
                          width: viewWidth * 0.44,
                          child: AppFilledButton(
                            onPressed: () {},
                            title: "Submit",
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
