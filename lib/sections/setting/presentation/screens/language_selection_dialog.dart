import 'package:advice/core/utils/localization_utils.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class LanguageSelectionDialog extends StatelessWidget {
  final Function(Locale) onLanguageChanged;

  const LanguageSelectionDialog({super.key, required this.onLanguageChanged});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AlertDialog(
      title: Text(context.loc.selectLanguage, style: theme.titleLarge,),
      content: SizedBox(
        width: double.maxFinite,
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              title: Text(context.loc.english,style: theme.bodyLarge,),
              onTap: () {
                onLanguageChanged(Locale('en', 'US'));
                AutoRouter.of(context).popForced();
              },
            ),
            ListTile(
              title: Text(context.loc.nepali, style: theme.bodyLarge,),
              onTap: () {
                onLanguageChanged(Locale('ne', 'NP'));
                AutoRouter.of(context).popForced();
              },
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            AutoRouter.of(context).popForced();
          },
          child: Text(
            context.loc.cancel,
            style: theme.bodyLarge?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
