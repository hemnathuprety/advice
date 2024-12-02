import 'package:advice/themes/color_extensions.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/dashboard/presentation/blocs/profile_bloc.dart';
import 'package:flutter/material.dart';

class AuthButtonWidget extends StatelessWidget {
  const AuthButtonWidget({
    super.key,
    required this.state,
  });

  final ProfileState state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 48,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(left: 24, right: 24, top: 16, bottom: 24),
      child: Row(
        children: [
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              (state is ProfileSuccess)
                  ? context.loc.logout
                  : context.loc.signIn,
                style: theme.titleMedium?.copyWith(
                  color: AppColors.primaryTextColorLight,
                ),
            ),
          ),
          const SizedBox(
            width: 32,
            height: 32,
            child: Opacity(
              opacity: 1,
              child: Icon(
                Icons.login,
                color: AppColors.primaryTextColorLight,
              ),
            ),
          ),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
