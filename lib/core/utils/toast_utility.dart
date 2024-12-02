import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

class ToastUtility {
  static ToastificationItem showToast(
    BuildContext context,
    String title,
    String body,
  ) {
    final theme = Theme.of(context).textTheme;
    return toastification.showCustom(
      context: context,
      autoCloseDuration: const Duration(seconds: 5),
      alignment: Alignment.bottomCenter,
      builder: (BuildContext context, ToastificationItem holder) {
        return Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.warningColor,
          ),
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                  style: theme.titleMedium
                      ?.copyWith(color: AppColors.primaryTextColorLight)),
              const SizedBox(height: 8),
              Text(body,
                  style: theme.bodyMedium
                      ?.copyWith(color: AppColors.primaryTextColorLight)),
            ],
          ),
        );
      },
    );
  }
}
