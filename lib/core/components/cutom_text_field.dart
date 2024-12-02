import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController? textController;
  final String hintText;
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
  final int maxLines;
  final int minLines;

  const CustomTextField({
    super.key,
    this.textController,
    required this.hintText,
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
    this.maxLines = 1,
    this.minLines =1,
    this.onChangedFunction,
    this.hintTextStyle,
    this.onTapFunction,
    this.autoValidateMode = AutovalidateMode.disabled,
    this.keyBoardType = TextInputType.text,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscureInt = true;

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
        TextFormField(
          readOnly: widget.isReadOnly,
          validator: widget.formValidator,
          keyboardType: widget.keyBoardType,
          cursorColor: AppColors.borderNeutralColor,
          cursorWidth: 1,
          minLines: widget.minLines,
          maxLines: widget.maxLines,
          obscureText: widget.isPasswordField ? isObscureInt : false,
          controller: widget.textController,
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
            contentPadding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            filled: true,
            fillColor: widget.fillColor,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: AppColors.borderNeutralColor, width: .5)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: AppColors.borderNeutralColor, width: .5)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: AppColors.borderNeutralColor, width: .5)),
            errorBorder: OutlineInputBorder(
                gapPadding: 20,
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    BorderSide(color: AppColors.borderNeutralColor, width: .5)),
            errorStyle: TextStyle(
              height: 1,
              color: AppColors.warningColor,
            ),
            hintText: widget.hintText,
            focusedErrorBorder: OutlineInputBorder(
                gapPadding: 10,
                borderSide: BorderSide(color: AppColors.borderNeutralColor)),
            hintStyle: widget.hintTextStyle ?? theme.bodyMedium,
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
