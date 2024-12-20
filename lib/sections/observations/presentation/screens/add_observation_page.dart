import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/components/app_outline_button.dart';
import 'package:advice/core/components/custom_select_menu_view.dart';
import 'package:advice/core/components/cutom_locations_text_field.dart';
import 'package:advice/core/components/cutom_text_field.dart';
import 'package:advice/core/components/date_picker_container.dart';
import 'package:advice/core/components/image_capture_widget.dart';
import 'package:advice/core/components/loading_screen.dart';
import 'package:advice/core/constants/app_constants.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/core/utils/toast_utility.dart';
import 'package:advice/sections/crops/model/crop_detail.dart';
import 'package:advice/sections/crops/model/crops_model.dart';
import 'package:advice/sections/observations/blocs/observation_bloc.dart';
import 'package:advice/sections/observations/models/districts_model.dart';
import 'package:advice/sections/observations/models/municipality_model.dart';
import 'package:advice/sections/observations/models/posting_observation_model.dart';
import 'package:advice/sections/observations/models/province_model.dart';
import 'package:advice/sections/observations/models/water_resource.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddObservationPage extends StatefulWidget {
  const AddObservationPage({
    super.key,
    required this.imageFiles,
    required this.imageUrl,
  });

  final XFile? imageFiles;
  final String? imageUrl;

  @override
  State<AddObservationPage> createState() => _AddObservationPageState();
}

class _AddObservationPageState extends State<AddObservationPage> {
  final TextEditingController specificConditionsController =
      TextEditingController();

  final TextEditingController dateController = TextEditingController();
  final TextEditingController latController = TextEditingController();
  final TextEditingController longController = TextEditingController();

  String? selectedObservedCondition;

  MunicipalityModel? selectedMunicipality;
  ProvinceModel? selectedProvince;
  Districts? selectedDistrict;
  CropsModel? selectedCrop;
  Variety? selectedVariety;
  Stage? selectedCropStage;
  ManagementPractice? selectedManagementPractice;
  PotentialPest? selectedPest;
  WaterResource? selectedWaterResource;
  String? specificConditions;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocProvider(
      create: (context) => getIt<ObservationBloc>()
        ..add(ObservationEvent.load())
        ..add(ObservationEvent.cropLoad()),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.primaryTextColorLight,
          title: Text(
            "Add Observations Details",
            style: theme.titleMedium?.copyWith(
              color: AppColors.primaryTextColorLight,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(8),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: AppColors.surfaceNeutralColorLight,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [kDefaultCardShadow],
                ),
                child: BlocConsumer<ObservationBloc, ObservationState>(
                  listener: (context, state) {
                    if (state.isLoading) {
                      LoadingScreen.instance()
                          .show(context: context, text: context.loc.loading);
                    } else {
                      LoadingScreen.instance().hide();
                    }
                    if (state.isLocationLoaded) {
                      context.read<ObservationBloc>().add(
                            ObservationEvent.reset(),
                          );
                      selectedProvince = state.locations?.province;
                      selectedDistrict = state.locations?.district;
                      selectedMunicipality = state.locations?.municipality;
                      onSubmitObservationModel(context);
                    }
                    if (state.hasObservationSubmitted) {
                      DialogUtils.showCustomAppDialog(
                        context,
                        context.loc.submissionSuccessful,
                        context.loc.submissionSuccessfulDesc,
                        context.loc.ok,
                        "",
                        (result) {
                          if (result) {
                            AutoRouter.of(context).popUntilRoot();
                          }
                        },
                      );
                      context.read<ObservationBloc>().add(
                            ObservationEvent.reset(),
                          );
                    }
                    if (state.hasError) {
                      DialogUtils.showCustomAppDialog(
                        context,
                        "Something Went Wrong",
                        "An unexpected error occurred. Please try again later.",
                        context.loc.ok,
                        "",
                        (result) {},
                      );
                      context.read<ObservationBloc>().add(
                            ObservationEvent.reset(),
                          );
                    }
                  },
                  builder: (context, state) {
                    return Column(
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
                            context.read<ObservationBloc>().add(
                                  ObservationEvent.isEnterManuallyLoad(
                                      !state.isEnterManually),
                                );
                          },
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        if (state.isEnterManually)
                          CustomSelectMenuView(
                            key: UniqueKey(),
                            onSelected: (p0) {
                              setState(() {
                                selectedProvince = p0;
                              });
                              context.read<ObservationBloc>().add(
                                    ObservationEvent.districtLoad(
                                        selectedProvince?.id ?? 0),
                                  );
                            },
                            titleText: "Province:",
                            hintText: "Select Province",
                            initialSelection: selectedProvince,
                            list: state.provinceList
                                .map<DropdownMenuEntry<ProvinceModel>>(
                                    (ProvinceModel value) {
                              return DropdownMenuEntry<ProvinceModel>(
                                value: value,
                                label: value.name ?? "",
                              );
                            }).toList(),
                          ),
                        if (state.isEnterManually)
                          CustomSelectMenuView(
                            key: UniqueKey(),
                            onSelected: (p0) {
                              setState(() {
                                selectedDistrict = p0;
                              });
                              context.read<ObservationBloc>().add(
                                    ObservationEvent.municipalityLoad(
                                        selectedDistrict?.id ?? 0),
                                  );
                            },
                            titleText: "District:",
                            hintText: "Select District",
                            initialSelection: selectedDistrict,
                            list: state.districts?.districts == null
                                ? []
                                : state.districts!.districts!
                                    .map<DropdownMenuEntry<Districts>>(
                                        (Districts value) {
                                    return DropdownMenuEntry<Districts>(
                                      value: value,
                                      label: value.name ?? "",
                                    );
                                  }).toList(),
                          ),
                        if (state.isEnterManually)
                          CustomSelectMenuView(
                            key: UniqueKey(),
                            onSelected: (p0) {
                              setState(() {
                                selectedMunicipality = p0;
                              });
                            },
                            titleText: "Municipality:",
                            hintText: "Select Municipality",
                            initialSelection: selectedMunicipality,
                            list: state.municipalityList
                                .map<DropdownMenuEntry<MunicipalityModel>>(
                                    (MunicipalityModel value) {
                              return DropdownMenuEntry<MunicipalityModel>(
                                value: value,
                                label: value.name ?? "",
                              );
                            }).toList(),
                          ),
                        CustomSelectMenuView(
                          key: UniqueKey(),
                          onSelected: (p0) {
                            setState(() {
                              selectedCrop = p0;
                              selectedCropStage = null;
                              selectedPest = null;
                              selectedManagementPractice = null;
                            });
                            context.read<ObservationBloc>().add(
                                  ObservationEvent.cropDetailLoad(
                                      selectedCrop?.id ?? 0),
                                );
                          },
                          titleText: "Crop:",
                          hintText: "Select Crop",
                          initialSelection: selectedCrop,
                          list: state.crops.map<DropdownMenuEntry<CropsModel>>(
                              (CropsModel value) {
                            return DropdownMenuEntry<CropsModel>(
                              value: value,
                              label: value.name ?? "",
                            );
                          }).toList(),
                        ),
                        CustomSelectMenuView(
                          key: UniqueKey(),
                          onSelected: (p0) {
                            setState(() {
                              selectedVariety = p0;
                            });
                          },
                          titleText: "Variety:",
                          hintText: "Select Variety",
                          initialSelection: selectedVariety,
                          list: state.varieties.map<DropdownMenuEntry<Variety>>(
                                  (Variety value) {
                                return DropdownMenuEntry<Variety>(
                                  value: value,
                                  label: value.name ?? "",
                                );
                              }).toList() ??
                              [],
                        ),
                        CustomSelectMenuView(
                          key: UniqueKey(),
                          onSelected: (p0) {
                            setState(() {
                              selectedCropStage = p0;
                            });
                          },
                          titleText: "Crop Stage(Optional):",
                          hintText: "Select Crop Stage",
                          initialSelection: selectedCropStage,
                          list: state.stages
                              .map<DropdownMenuEntry<Stage>>((Stage value) {
                            return DropdownMenuEntry<Stage>(
                              value: value,
                              label: value.name ?? "",
                            );
                          }).toList(),
                        ),
                        CustomSelectMenuView(
                          key: UniqueKey(),
                          onSelected: (p0) {
                            selectedObservedCondition = p0;
                            selectedPest = null;
                            selectedManagementPractice = null;
                            setState(() {});
                          },
                          titleText: "Observed Condition:",
                          hintText: "Select Observed Condition",
                          initialSelection: selectedObservedCondition,
                          list: observedCondition
                              .map<DropdownMenuEntry<String>>((dynamic value) {
                            return DropdownMenuEntry<String>(
                              value: value,
                              label: value,
                            );
                          }).toList(),
                        ),
                        if (selectedObservedCondition == "Management Practice")
                          CustomSelectMenuView(
                            key: UniqueKey(),
                            onSelected: (p0) {
                              setState(() {
                                selectedManagementPractice = p0;
                              });
                            },
                            titleText: "Management Practice:",
                            hintText: "Select Management Practice",
                            initialSelection: selectedManagementPractice,
                            list: state.managementPractices
                                .map<DropdownMenuEntry<ManagementPractice>>(
                                    (ManagementPractice value) {
                              return DropdownMenuEntry<ManagementPractice>(
                                value: value,
                                label: value.name ?? "",
                              );
                            }).toList(),
                          ),
                        if (selectedObservedCondition == "Pest")
                          CustomSelectMenuView(
                            key: UniqueKey(),
                            onSelected: (p0) {
                              setState(() {
                                selectedPest = p0;
                              });
                            },
                            titleText: "Pest:",
                            hintText: "Select Pest",
                            initialSelection: selectedPest,
                            list: state.potentialPests
                                .map<DropdownMenuEntry<PotentialPest>>(
                                    (PotentialPest value) {
                              return DropdownMenuEntry<PotentialPest>(
                                value: value,
                                label: value.name ?? "",
                              );
                            }).toList(),
                          ),
                        if (selectedPest?.name == "Other" ||
                            selectedManagementPractice?.name == "Other")
                          CustomTextField(
                            key: UniqueKey(),
                            textController: specificConditionsController,
                            hintText: selectedPest?.name == "Other"
                                ? "Enter Pest Name"
                                : "Enter Management Practice",
                            isObscure: false,
                            fieldTitle: selectedPest?.name == "Other"
                                ? "Pest Name"
                                : "Management Practice",
                            errorText: '',
                            titleField: true,
                            onChangedFunction: (p0) {
                              specificConditions = p0;
                            },
                            formValidator: (p0) {
                              return null;
                            },
                          ),
                        CustomSelectMenuView(
                          key: UniqueKey(),
                          onSelected: (p0) {
                            setState(() {
                              selectedWaterResource = p0;
                            });
                          },
                          titleText: "Water Resource:",
                          hintText: "Select Water Resource",
                          initialSelection: selectedWaterResource,
                          list: state.waterResource
                              .map<DropdownMenuEntry<WaterResource>>(
                                  (WaterResource value) {
                            return DropdownMenuEntry<WaterResource>(
                              value: value,
                              label: value.name ?? "",
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
                          width: double.infinity,
                          child: Text(
                            "Upload Images:",
                            style: theme.bodyMedium,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        SizedBox(
                          height: 100,
                          child: ImageCaptureWidget(
                            file: widget.imageFiles,
                            width: 100,
                          ),
                        ),
                        SizedBox(height: 24),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: AppFilledButton(
                                onPressed: () {
                                  AutoRouter.of(context).popForced();
                                },
                                color: AppColors.warningColor,
                                title: "Later",
                              ),
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: AppFilledButton(
                                onPressed: () {
                                  if (selectedMunicipality == null &&
                                      latController.text.isNotEmpty &&
                                      longController.text.isNotEmpty) {
                                    context.read<ObservationBloc>().add(
                                          ObservationEvent.locationDetailLoad(
                                              latController.text,
                                              longController.text),
                                        );
                                  } else {
                                    onSubmitObservationModel(context);
                                  }
                                },
                                title: "Submit",
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void onSubmitObservationModel(BuildContext context) {
    String? unverifiedPests;
    String? unverifiedManagementPractices;
    int? provinceId = selectedProvince?.id;
    int? districtId = selectedDistrict?.id;
    int? municipalityId = selectedMunicipality?.id;
    int? cropId = selectedCrop?.id;

    if (provinceId == null &&
        districtId == null &&
        municipalityId == null &&
        cropId == null &&
        dateController.text.isEmpty) {
      ToastUtility.showToast(
        context,
        context.loc.missingRequiredFields,
        context.loc.missingRequiredFieldsDesc,
      );
      return;
    }

    if (selectedObservedCondition == "Pest" && selectedPest == null) {
      ToastUtility.showToast(
        context,
        context.loc.missingRequiredFields,
        context.loc.missingRequiredFieldsDesc,
      );
      return;
    }
    if (selectedObservedCondition == "Management Practice" &&
        selectedManagementPractice == null) {
      ToastUtility.showToast(
        context,
        context.loc.missingRequiredFields,
        context.loc.missingRequiredFieldsDesc,
      );
      return;
    }

    var lat = latController.text;
    var long = longController.text;

    if (selectedPest?.name == "Other") {
      unverifiedPests = specificConditionsController.text;
    }

    if (selectedManagementPractice?.name == "Other") {
      unverifiedManagementPractices = specificConditionsController.text;
    }

    if (lat.isEmpty) {
      lat = "0.0";
    }

    if (long.isEmpty) {
      long = "0.0";
    }

    PostingObservationModel observationModel = PostingObservationModel(
      lat: lat,
      lon: long,
      province: provinceId.toString(),
      district: districtId.toString(),
      municipality: municipalityId.toString(),
      crop: cropId.toString(),
      variety: selectedVariety?.id.toString(),
      stages: selectedCropStage?.id?.toString(),
      observedCondition: selectedObservedCondition,
      managementPractices: selectedManagementPractice?.id?.toString(),
      pests: selectedPest?.id?.toString(),
      unverifiedPests: unverifiedPests,
      unverifiedManagementPractices: unverifiedManagementPractices,
      dateObserved: dateController.text,
      image: widget.imageUrl,
      waterResource: selectedWaterResource?.name,
    );

    context.read<ObservationBloc>().add(
          ObservationEvent.observationLoad(observationModel),
        );
  }
}
