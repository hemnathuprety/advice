import 'package:advice/core/components/circle_container_view.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CustomLocationsTextField extends StatefulWidget {
  final TextEditingController? latController;
  final TextEditingController? longController;
  final bool isObscure;
  final String errorText;
  final String? fieldTitle;
  final bool titleField;
  final Widget? suffixIcon;
  final bool? hasSuffixIcon;
  final bool isEmailField;
  final bool isPasswordField;
  final bool? isCreateNewPasswordField;
  final bool isNormalField;
  final String? Function(String?)? formValidator;
  final bool isReadOnly;
  final Color fillColor;
  final Function(String)? onChangedFunction;
  final Function()? onTapFunction;
  final TextStyle? hintTextStyle;
  final AutovalidateMode autoValidateMode;
  final TextInputType keyBoardType;

  const CustomLocationsTextField({
    super.key,
    this.latController,
    this.longController,
    required this.isObscure,
    required this.errorText,
    required this.formValidator,
    this.isReadOnly = false,
    this.fieldTitle,
    this.fillColor = Colors.white,
    this.isPasswordField = false,
    this.titleField = false,
    this.isEmailField = false,
    this.suffixIcon,
    this.hasSuffixIcon,
    this.isNormalField = false,
    this.isCreateNewPasswordField = false,
    this.onChangedFunction,
    this.hintTextStyle,
    this.onTapFunction,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.keyBoardType = TextInputType.text,
  });

  @override
  State<CustomLocationsTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomLocationsTextField> {
  bool isObscureInt = true;
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.fieldTitle ?? '',
          style: theme.bodyMedium,
        ),
        SizedBox(
          height: 4,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: TextFormField(
                readOnly: widget.isReadOnly,
                validator: widget.formValidator,
                keyboardType: widget.keyBoardType,
                cursorColor: AppColors.borderNeutralColor,
                cursorWidth: 1,
                obscureText: widget.isPasswordField ? isObscureInt : false,
                controller: widget.latController,
                style: theme.bodyMedium,
                autocorrect: false,
                autovalidateMode: widget.autoValidateMode,
                onChanged: widget.onChangedFunction,
                onTap: widget.onTapFunction,
                decoration: InputDecoration(
                  suffixIcon: widget.isPasswordField
                      ? IconButton(
                          iconSize: 20,
                          onPressed: () {
                            setState(() {
                              isObscureInt = !isObscureInt;
                            });
                          },
                          icon: isObscureInt
                              ? const Icon(Icons.visibility_outlined)
                              : const Icon(Icons.visibility_off_outlined),
                        )
                      : const SizedBox(),
                  contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  filled: true,
                  fillColor: widget.fillColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  errorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  errorStyle: TextStyle(
                    height: 1,
                    color: AppColors.warningColor,
                  ),
                  hintText: "Lat",
                  focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 10,
                      borderSide:
                          BorderSide(color: AppColors.borderNeutralColor)),
                  hintStyle: widget.hintTextStyle ?? theme.bodyMedium,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.35,
              child: TextFormField(
                readOnly: widget.isReadOnly,
                validator: widget.formValidator,
                keyboardType: widget.keyBoardType,
                cursorColor: AppColors.borderNeutralColor,
                cursorWidth: 1,
                obscureText: widget.isPasswordField ? isObscureInt : false,
                controller: widget.longController,
                style: theme.bodyMedium,
                autocorrect: false,
                autovalidateMode: widget.autoValidateMode,
                onChanged: widget.onChangedFunction,
                onTap: widget.onTapFunction,
                decoration: InputDecoration(
                  suffixIcon: widget.isPasswordField
                      ? IconButton(
                          iconSize: 20,
                          onPressed: () {
                            setState(() {
                              isObscureInt = !isObscureInt;
                            });
                          },
                          icon: isObscureInt
                              ? const Icon(Icons.visibility_outlined)
                              : const Icon(Icons.visibility_off_outlined),
                        )
                      : const SizedBox(),
                  contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                  filled: true,
                  fillColor: widget.fillColor,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  errorBorder: OutlineInputBorder(
                      gapPadding: 20,
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(
                          color: AppColors.borderNeutralColor, width: .5)),
                  errorStyle: TextStyle(
                    height: 1,
                    color: AppColors.warningColor,
                  ),
                  hintText: "Long",
                  focusedErrorBorder: OutlineInputBorder(
                      gapPadding: 10,
                      borderSide:
                          BorderSide(color: AppColors.borderNeutralColor)),
                  hintStyle: widget.hintTextStyle ?? theme.bodyMedium,
                ),
              ),
            ),
            CircleContainerView(
              width: 48,
              height: 48,
              borderRadius: 4,
              child: IconButton(
                onPressed: _getCurrentPosition,
                padding: EdgeInsets.all(0),
                iconSize: 28,
                icon: isLoading
                    ? SizedBox(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(),
                      )
                    : Icon(
                        Icons.my_location,
                      ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }

  Future<bool> _handleLocationPermission() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location services are disabled. Please enable the services')));
      return false;
    }
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Location permissions are denied')));
        return false;
      }
    }
    if (permission == LocationPermission.deniedForever) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text(
              'Location permissions are permanently denied, we cannot request permissions.')));
      return false;
    }
    return true;
  }

  Future<void> _getCurrentPosition() async {
    setState(() {
      isLoading = true;
    });

    final hasPermission = await _handleLocationPermission();
    if (!hasPermission) {
      setState(() {
        isLoading = false;
      });
      return;
    }
    final LocationSettings locationSettings = LocationSettings(
      accuracy: LocationAccuracy.high,
      distanceFilter: 100,
    );
    await Geolocator.getCurrentPosition(locationSettings: locationSettings)
        .then((Position position) {
      widget.latController?.text = position.latitude.toString();
      widget.longController?.text = position.longitude.toString();
      setState(() {
        isLoading = false;
      });
    }).catchError((e) {
      debugPrint(e);
      setState(() {
        isLoading = false;
      });
    });
  }
}
