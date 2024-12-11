import 'package:advice/core/components/circle_container_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class CustomSelectMenuView extends StatelessWidget {
  const CustomSelectMenuView({
    super.key,
    this.initialSelection,
    required this.onSelected,
    required this.titleText,
    required this.hintText,
    required this.list,
  });

  final dynamic initialSelection;
  final Function(dynamic) onSelected;
  final String titleText;
  final String hintText;
  final List<DropdownMenuEntry<dynamic>> list;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleText,
          style: theme.bodyMedium,
        ),
        SizedBox(
          height: 6,
        ),
        CircleContainerView(
          width: double.infinity,
          height: 48,
          borderRadius: 8,
          child: DropdownMenu<dynamic>(
            menuHeight: 200,
            width: double.infinity,
            initialSelection: initialSelection,
            inputDecorationTheme: InputDecorationTheme(
              isDense: true,
              contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              constraints: BoxConstraints.tight(const Size.fromHeight(48)),
              border: InputBorder.none,
            ),
            label: null,
            hintText: hintText,
            trailingIcon: Icon(FeatherIcons.chevronDown),
            requestFocusOnTap: false,
            onSelected: (value) {
              onSelected(value);
            },
            dropdownMenuEntries: list,
          ),
        ),
        SizedBox(
          height: 16,
        ),
      ],
    );
  }
}
