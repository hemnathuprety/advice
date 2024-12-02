import 'package:auto_route/auto_route.dart';
import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class DialogUtils {
  // Static method to show the login request dialog
  static void showCustomAppDialog(
    BuildContext context,
    String title,
    String body,
    String btn,
    Function callback,
  ) {
    final theme = Theme.of(context).textTheme;
    showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title, style: theme.titleLarge),
          content: Text(body, style: theme.bodyMedium),
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
            FilledButton(
              onPressed: () {
                AutoRouter.of(context).popForced();
                callback(true);
              },
              child: Text(
                btn,
                style: theme.bodyLarge?.copyWith(
                  color: AppColors.primaryTextColorLight,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  static Future<bool?> showLogoutDialog(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(context.loc.confirmLogout, style: theme.titleLarge),
          content: Text(context.loc.confirmLogoutBody, style: theme.bodyMedium),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: theme.labelLarge,
              ),
              child: Text(
                context.loc.cancel,
                style: theme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.pop(context, false);
              },
            ),
            FilledButton(
              child: Text(
                context.loc.logout,
                style: theme.bodyMedium?.copyWith(
                  color: AppColors.primaryTextColorLight,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onPressed: () {
                Navigator.pop(context, true);
              },
            ),
          ],
        );
      },
    );
  }

  static Future<int?> showCloserOptionsDialog(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return showGeneralDialog<int>(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Container(
            margin: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  AppColors.contentColorWhite.withOpacity(0.7),
                  AppColors.contentColorWhite,
                ],
              ),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.contentColorWhite.withOpacity(0.3),
                    offset: const Offset(0, 3),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: AppColors.borderNeutralColorDark.withOpacity(0.3),
                    offset: const Offset(0, 30),
                    blurRadius: 30,
                  )
                ],
                color: AppColors.surfaceNeutralColor,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  Text(
                    "Choose Advisory Type",
                    style: theme.headlineMedium?.copyWith(
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Text(
                    "Please select the type of advisory to add.",
                    style: theme.bodyLarge?.copyWith(),
                  ),
                  const SizedBox(height: 32),
                  AppFilledButton(
                    color: AppColors.primary,
                    title: "Road Closure",
                    onPressed: () {
                      AutoRouter.of(context).popForced(1);
                    },
                  ),
                  const SizedBox(height: 24),
                  AppFilledButton(
                    color: AppColors.primary,
                    title: "Bridge Closure",
                    onPressed: () {
                      AutoRouter.of(context).popForced(2);
                    },
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
