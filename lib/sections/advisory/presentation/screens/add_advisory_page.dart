import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/components/custom_select_menu_view.dart';
import 'package:advice/core/components/cutom_locations_text_field.dart';
import 'package:advice/core/components/cutom_text_field.dart';
import 'package:advice/core/components/date_picker_container.dart';
import 'package:advice/core/components/image_add_widget.dart';
import 'package:advice/core/components/image_capture_widget.dart';
import 'package:advice/core/components/loading_screen.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/constants/view_status.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/core/utils/toast_utility.dart';
import 'package:advice/sections/advisory/data/models/add_advisory_model.dart';
import 'package:advice/sections/advisory/data/models/add_bridge_closer_advisory_model.dart';
import 'package:advice/sections/advisory/domain/entities/districts_entity.dart';
import 'package:advice/sections/advisory/domain/entities/roads_from_division_entity.dart';
import 'package:advice/sections/advisory/presentation/blocs/add_advisories_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddAdvisoryPage extends StatefulWidget {
  const AddAdvisoryPage({
    super.key,
    required this.imageFiles,
    required this.onAddClick,
    required this.closerOptions,
  });

  final List<XFile?> imageFiles;
  final VoidCallback onAddClick;
  final int closerOptions;

  @override
  State<AddAdvisoryPage> createState() => _AddAdvisoryPageState();
}

class _AddAdvisoryPageState extends State<AddAdvisoryPage> {
  final TextEditingController chainageController = TextEditingController();
  final TextEditingController bridgeNameController = TextEditingController();
  final TextEditingController startDateController = TextEditingController();
  final TextEditingController endDateController = TextEditingController();
  final TextEditingController latController = TextEditingController();
  final TextEditingController longController = TextEditingController();
  final TextEditingController contactPersonController = TextEditingController();
  final TextEditingController remarkController = TextEditingController();
  final TextEditingController selectDivisionController =
      TextEditingController();
  final TextEditingController selectDistrictsController =
      TextEditingController();
  final TextEditingController selectRoadController = TextEditingController();
  final TextEditingController selectRoadLinkController =
      TextEditingController();
  final TextEditingController selectTypeController = TextEditingController();
  final TextEditingController selectDamageTypeController =
      TextEditingController();
  final TextEditingController selectReasonController = TextEditingController();

  String selectedDivision = "";
  DistrictsData? selectedDistricts;
  RoadsFromDivisionDataEntity? selectedRoad;
  RoadsFromDivisionDataEntity? selectedRoadLink;
  ClosureType? selectedClosureType;
  DamageType? selectedDamageType;
  String? selectedClosureReason;

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
            context.read<AddAdvisoriesBloc>().add(
                  UploadAdvisoryImages(
                      files: widget.imageFiles, id: state.roadClosureId ?? 0),
                );
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
                widget.closerOptions == 1
                    ? "Add Road Closure Advisory"
                    : "Add Bridge Closure Advisory",
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
                    if (widget.closerOptions == 1)
                      CustomSelectMenuView(
                        onSelected: (p0) {
                          if (p0 is String) {
                            setState(() {
                              selectedDivision = p0;
                            });
                          }
                          selectedRoad = null;
                          selectRoadController.text = "";
                          selectRoadLinkController.text = "";
                          context.read<AddAdvisoriesBloc>().add(
                              GetRoadDivisionsList(divName: selectedDivision));
                        },
                        controller: selectDivisionController,
                        titleText: "Division:",
                        hintText: "Select Division",
                        list: state.divisionsEntity.divisions!
                            .map<DropdownMenuEntry<String>>((dynamic value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                          );
                        }).toList(),
                      ),
                    if (widget.closerOptions == 1)
                      CustomSelectMenuView(
                        onSelected: (p0) {
                          if (p0 is RoadsFromDivisionDataEntity) {
                            setState(() {
                              selectedRoad = p0;
                            });
                            selectedRoadLink = null;
                            selectRoadLinkController.text = "";
                            if (selectedRoad != null) {
                              context.read<AddAdvisoriesBloc>().add(
                                    FilterRoadLinkList(
                                      refNo: selectedRoad!.roadRefno ?? "",
                                    ),
                                  );
                            }
                          }
                        },
                        titleText: "Road:",
                        hintText: "Select Road",
                        controller: selectRoadController,
                        list: state.roadFromDivisionEntity.map<
                                DropdownMenuEntry<RoadsFromDivisionDataEntity>>(
                            (RoadsFromDivisionDataEntity value) {
                          return DropdownMenuEntry<RoadsFromDivisionDataEntity>(
                            value: value,
                            label: value.roadName ?? "",
                          );
                        }).toList(),
                      ),
                    if (widget.closerOptions == 1)
                      CustomSelectMenuView(
                        onSelected: (p0) {
                          if (p0 is RoadsFromDivisionDataEntity) {
                            setState(() {
                              selectedRoadLink = p0;
                            });
                          }
                        },
                        titleText: "Road Link:",
                        hintText: "Select Road Link",
                        controller: selectRoadLinkController,
                        list: state.roadLinkDivisionEntity.map<
                                DropdownMenuEntry<
                                    RoadsFromDivisionDataEntity?>>(
                            (RoadsFromDivisionDataEntity? value) {
                          return DropdownMenuEntry<
                              RoadsFromDivisionDataEntity?>(
                            value: value,
                            label: value?.linkName ?? "",
                          );
                        }).toList(),
                      ),
                    if (widget.closerOptions == 1)
                      CustomTextField(
                        textController: chainageController,
                        hintText: 'Enter Chainage',
                        isObscure: false,
                        fieldTitle: 'Chainage:',
                        errorText: '',
                        titleField: true,
                        formValidator: (p0) {
                          return null;
                        },
                      ),
                    if (widget.closerOptions == 2)
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
                    if (widget.closerOptions == 2)
                      CustomTextField(
                        textController: bridgeNameController,
                        hintText: 'Enter Bridge Name:',
                        isObscure: false,
                        fieldTitle: 'Bridge Name:',
                        errorText: '',
                        titleField: true,
                        formValidator: (p0) {
                          return null;
                        },
                      ),
                    DatePickerContainer(
                      textController: startDateController,
                      hintText: 'Select Closure Start Date',
                      text: 'Closure Start Date:',
                      errorText: '',
                    ),
                    DatePickerContainer(
                      textController: endDateController,
                      hintText: 'Select Closure End Date',
                      text: 'Closure End Date:',
                      errorText: '',
                    ),
                    CustomSelectMenuView(
                      onSelected: (p0) {
                        if (p0 is ClosureType) {
                          setState(() {
                            selectedClosureType = p0;
                          });
                        }
                      },
                      titleText: "Closure Type:",
                      hintText: "Select Closure Type",
                      controller: selectTypeController,
                      list: closureType.map<DropdownMenuEntry<ClosureType>>(
                          (ClosureType value) {
                        return DropdownMenuEntry<ClosureType>(
                          value: value,
                          label: value.name,
                        );
                      }).toList(),
                    ),
                    if (widget.closerOptions == 2)
                      CustomSelectMenuView(
                        onSelected: (p0) {
                          if (p0 is DamageType) {
                            setState(() {
                              selectedDamageType = p0;
                            });
                          }
                        },
                        titleText: "Damage Type:",
                        hintText: "Select Damage Type",
                        controller: selectDamageTypeController,
                        list: damageType.map<DropdownMenuEntry<DamageType>>(
                            (DamageType value) {
                          return DropdownMenuEntry<DamageType>(
                            value: value,
                            label: value.name,
                          );
                        }).toList(),
                      ),
                    if (widget.closerOptions == 1)
                      CustomSelectMenuView(
                        onSelected: (p0) {
                          if (p0 is String) {
                            setState(() {
                              selectedClosureReason = p0;
                            });
                          }
                        },
                        titleText: "Closure Reason:",
                        hintText: "Select Closure Reason",
                        controller: selectReasonController,
                        list: closureReason
                            .map<DropdownMenuEntry<String>>((dynamic value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                          );
                        }).toList(),
                      ),
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
                    CustomTextField(
                      textController: contactPersonController,
                      hintText: 'Enter Contact Person Number',
                      isObscure: false,
                      fieldTitle: 'Contact Person:',
                      errorText: '',
                      titleField: true,
                      formValidator: (p0) {
                        return null;
                      },
                    ),
                    CustomTextField(
                      textController: remarkController,
                      hintText: widget.closerOptions == 1
                          ? 'Enter Remarks'
                          : 'Enter Reason for Closure',
                      isObscure: false,
                      fieldTitle: widget.closerOptions == 1
                          ? 'Remarks:'
                          : 'Reason for Closure:',
                      errorText: '',
                      maxLines: 5,
                      minLines: 5,
                      titleField: true,
                      formValidator: (p0) {
                        return null;
                      },
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
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: widget.imageFiles.length + 1,
                        itemBuilder: (BuildContext context, int index) {
                          if (widget.imageFiles.length > index) {
                            var imageFile = widget.imageFiles[index];
                            return ImageCaptureWidget(
                              file: imageFile,
                              width: 120,
                            );
                          }
                          return ImageAddWidget(
                            width: 120,
                            onAddClock: widget.onAddClick,
                          );
                        },
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
                            onPressed: () {
                              if (widget.closerOptions == 1) {
                                onUploadRoadCloserData(context);
                              } else {
                                onUploadBridgeCloserData(context);
                              }
                            },
                            title: "Add",
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

  void onUploadRoadCloserData(BuildContext context) {
    if (selectedRoadLink != null &&
        selectedClosureType != null &&
        selectedClosureReason != null &&
        chainageController.text.isNotEmpty &&
        latController.text.isNotEmpty &&
        longController.text.isNotEmpty &&
        startDateController.text.isNotEmpty &&
        endDateController.text.isNotEmpty) {
      AddAdvisoryModel dataModel = AddAdvisoryModel(
        division: selectedRoadLink?.divName,
        roadRefno: selectedRoadLink?.roadRefno,
        roadName: selectedRoadLink?.roadName,
        linkCode: selectedRoadLink?.linkCode,
        district: selectedRoadLink?.distName,
        chainage: chainageController.text,
        dateRoadblockStart: startDateController.text,
        dateRoadblockEndEstimated: endDateController.text,
        dateRoadblockEnd: selectedClosureType?.value == "OPEN"
            ? endDateController.text
            : null,
        closureType: selectedClosureType?.value,
        closureReason: selectedClosureReason,
        latitude: latController.text,
        longitude: longController.text,
        contactPerson: contactPersonController.text,
        effortsBeingMade: null,
        remarks: remarkController.text,
      );

      context
          .read<AddAdvisoriesBloc>()
          .add(UploadAdvisory(dataModel: dataModel));
    } else {
      ToastUtility.showToast(
        context,
        "Missing Required Fields",
        "Please complete all required fields before submitting the form.",
      );
    }
  }

  void onUploadBridgeCloserData(BuildContext context) {
    if (selectedDistricts != null &&
        bridgeNameController.text.isNotEmpty &&
        selectedClosureType != null &&
        selectedDamageType != null &&
        latController.text.isNotEmpty &&
        longController.text.isNotEmpty &&
        startDateController.text.isNotEmpty &&
        endDateController.text.isNotEmpty &&
        remarkController.text.isNotEmpty) {
      AddBridgeCloserAdvisoryModel dataModel = AddBridgeCloserAdvisoryModel(
        districtId: selectedDistricts?.districtId ?? "",
        roadName: bridgeNameController.text,
        startDate: startDateController.text,
        estimatedEndDate: endDateController.text,
        endDate: selectedClosureType?.value == "OPEN"
            ? endDateController.text
            : null,
        closureType: selectedClosureType?.value,
        closureReason: remarkController.text,
        damageType: selectedDamageType?.value,
        latitude: latController.text,
        longitude: longController.text,
        contactPerson: contactPersonController.text,
      );

      context
          .read<AddAdvisoriesBloc>()
          .add(UploadAdvisory(dataModel: dataModel));
    } else {
      ToastUtility.showToast(
        context,
        "Missing Required Fields",
        "Please complete all required fields before submitting the form.",
      );
    }
  }
}
