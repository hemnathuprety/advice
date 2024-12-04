
import 'package:advice/core/components/circular_back_button.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class CustomAppBackDart extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBackDart({
    super.key,
    required this.title,
    this.showBack = false,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  final String title;
  final bool showBack;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AppBar(
      elevation: 0,
      // Remove the shadow for a flat look
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      // White background
      leading: null,
      title: Stack(
        children: [
          showBack ? const CircularBackButton() : SizedBox(),
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 42,
              child: Center(
                child: Text(
                  title,
                  style: theme.titleLarge?.copyWith(
                    color: AppColors.primary,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),

      centerTitle: true,
    );
  }
}
