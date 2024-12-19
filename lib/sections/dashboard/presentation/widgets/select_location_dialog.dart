import 'package:advice/core/components/custom_select_menu_view.dart';
import 'package:advice/core/di/injection_container.dart';
import 'package:advice/sections/dashboard/presentation/blocs/select_location_bloc.dart';
import 'package:advice/sections/observations/models/districts_model.dart';
import 'package:advice/sections/observations/models/locations_model.dart';
import 'package:advice/sections/observations/models/municipality_model.dart';
import 'package:advice/sections/observations/models/province_model.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectLocationDialog extends StatelessWidget {
  final Function(LocationsModel) onLocationSelect;

  const SelectLocationDialog({super.key, required this.onLocationSelect});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: BlocProvider(
        create: (context) =>
            getIt<SelectLocationBloc>()..add(SelectLocationEvent.started()),
        child: BlocBuilder<SelectLocationBloc, SelectLocationState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Title
                  Text(
                    'Select Location',
                    style: theme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  // Subtitle

                  CustomSelectMenuView(
                    key: UniqueKey(),
                    onSelected: (p0) {
                      context.read<SelectLocationBloc>().add(
                            SelectLocationEvent.provinceSelected(p0),
                          );
                    },
                    titleText: "Province:",
                    hintText: "Select Province",
                    initialSelection: state.selectedProvince,
                    list: state.provinceList
                        .map<DropdownMenuEntry<ProvinceModel>>(
                            (ProvinceModel value) {
                      return DropdownMenuEntry<ProvinceModel>(
                        value: value,
                        label: value.name ?? "",
                      );
                    }).toList(),
                  ),

                  CustomSelectMenuView(
                    key: UniqueKey(),
                    onSelected: (p0) {
                      context.read<SelectLocationBloc>().add(
                            SelectLocationEvent.districtSelected(p0),
                          );
                    },
                    titleText: "District:",
                    hintText: "Select District",
                    initialSelection: state.selectedDistrict,
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

                  CustomSelectMenuView(
                    key: UniqueKey(),
                    onSelected: (p0) {
                      context.read<SelectLocationBloc>().add(
                            SelectLocationEvent.municipalitySelected(p0),
                          );
                    },
                    titleText: "Municipality:",
                    hintText: "Select Municipality",
                    initialSelection: state.selectedMunicipality,
                    list: state.municipalityList
                        .map<DropdownMenuEntry<MunicipalityModel>>(
                            (MunicipalityModel value) {
                      return DropdownMenuEntry<MunicipalityModel>(
                        value: value,
                        label: value.name ?? "",
                      );
                    }).toList(),
                  ),
                  const SizedBox(height: 24),
                  // Enable Location button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      minimumSize:
                          Size(double.infinity, 50), // Make button full width
                    ),
                    onPressed: () {
                      if (state.selectedMunicipality != null) {
                        Navigator.pop(context); // Close the dialog
                        LocationsModel locationsModel = LocationsModel(
                          province: state.selectedProvince,
                          district: state.selectedDistrict,
                          municipality: state.selectedMunicipality,
                        );
                        onLocationSelect(locationsModel);
                      }
                    },
                    child: Text(
                      'Set Location',
                      style: theme.bodyLarge?.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
