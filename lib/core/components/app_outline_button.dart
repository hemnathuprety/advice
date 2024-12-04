import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class AppOutlineButton extends StatelessWidget {
  const AppOutlineButton(
      {super.key, required this.title, required this.onClick});

  final String title;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 48,
        decoration: ShapeDecoration(
          color: AppColors.surfaceNeutralColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(width: 1, color: Colors.grey),
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: TextButton(
                  onPressed: onClick,
                  child: Text(
                    title,
                    style: TextStyle(
                      color: AppColors.primaryTextColor,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
