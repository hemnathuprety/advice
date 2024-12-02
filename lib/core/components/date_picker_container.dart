import 'dart:developer';

import 'package:advice/core/utils/date_utility.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:nepali_utils/nepali_utils.dart';

class DatePickerContainer extends StatefulWidget {
  final String text;
  final TextEditingController textController;
  final String hintText;
  final String? errorText;

  const DatePickerContainer({
    super.key,
    required this.text,
    required this.textController,
    required this.hintText,
    this.errorText,
  });

  @override
  State<DatePickerContainer> createState() => _InputBoxState();
}

class _InputBoxState extends State<DatePickerContainer> {
  DateTime selectedDate = DateTime.now();

  var dateNow = NepaliDateTime.now();

  Future _selectDate(BuildContext context) async => showDatePicker(
        context: context,
        initialDate: dateNow,
        firstDate: dateNow.subtract(Duration(days: 365)),
        lastDate: dateNow.add(Duration(days: 365)),
        initialDatePickerMode: DatePickerMode.day,
      ).then((DateTime? selected) {
        if (selected != null && selected != selectedDate) {
          setState(() {
            selectedDate = selected;
            widget.textController.text =
                DateUtility().formatDateToYYYMMDD(selectedDate);
            log("Date picker date :${widget.textController.text}");
          });
        }
      });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text),
        const SizedBox(
          height: 5,
        ),
        ConstrainedBox(
          constraints: BoxConstraints(minHeight: 46),
          child: TextFormField(
            minLines: 1,
            maxLines: 1,
            controller: widget.textController,
            cursorColor: Colors.black,
            cursorHeight: 20,
            obscureText: false,
            readOnly: true,
            style: const TextStyle(color: Colors.black),
            onTap: () async {
              _selectDate(context);
            },
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              filled: true,
              fillColor: Colors.white,
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
              prefixIcon: Icon(
                FeatherIcons.calendar,
                size: 18,
              ),
              hintText: widget.hintText,
              focusedErrorBorder: OutlineInputBorder(
                  gapPadding: 10,
                  borderSide: BorderSide(color: AppColors.borderNeutralColor)),
              hintStyle: theme.bodyMedium,
            ),
          ),
        ),
        SizedBox(
          height: 25,
        )
      ],
    );
  }
}
