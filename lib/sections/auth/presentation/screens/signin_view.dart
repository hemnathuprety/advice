import 'package:advice/core/components/app_filled_button.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/sections/auth/presentation/blocs/login_bloc.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInView extends StatefulWidget {
  const SignInView({super.key, this.closeModal});

  final Function? closeModal;

  @override
  State<SignInView> createState() => _SignInViewState();
}

class _SignInViewState extends State<SignInView> {
  final _emailController = TextEditingController(text: "admin@moald.com");
  final _passController = TextEditingController(text: "hello@123");

  bool isObscured = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, state) {
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
                    color: AppColors.primary.withOpacity(0.3),
                    offset: const Offset(0, 3),
                    blurRadius: 5,
                  ),
                  BoxShadow(
                    color: AppColors.borderNeutralColorDark.withOpacity(0.3),
                    offset: const Offset(0, 30),
                    blurRadius: 30,
                  )
                ],
                color: AppColors.surfaceColorLight,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16),
                  //Image.asset(AssetConstants.crop1),
                  const SizedBox(height: 12),
                  Text(
                    context.loc.signIn,
                    style: theme.headlineLarge?.copyWith(
                      fontSize: 34,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(height: 12),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.loc.emailAddress,
                      style: theme.bodyMedium?.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    textInputAction: TextInputAction.next,
                    keyboardType: TextInputType.emailAddress,
                    decoration:
                        authInputStyle(Icons.email_outlined, null, () {}),
                    controller: _emailController,
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      context.loc.password,
                      style: theme.bodyMedium?.copyWith(
                        color: AppColors.primary,
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextField(
                    obscureText: isObscured,
                    decoration: authInputStyle(
                        Icons.password_outlined,
                        (isObscured
                            ? Icons.visibility_outlined
                            : Icons.visibility_off_outlined), () {
                      setState(() {
                        isObscured = !isObscured;
                      });
                    }),
                    controller: _passController,
                  ),
                  const SizedBox(height: 32),
                  SizedBox(
                    height: 52.0,
                    child: AppFilledButton(
                      color: (state.isLoading)
                          ? AppColors.borderNeutralColor
                          : AppColors.primary,
                      title: context.loc.signIn,
                      icon: Icons.arrow_forward_rounded,
                      onPressed: () {
                        if (!state.isLoading) {
                          context.read<LoginBloc>().add(
                                LoginEvent.performLogin(
                                  _passController.text,
                                  _emailController.text,
                                ),
                              );
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextButton(
                    style: TextButton.styleFrom(
                      textStyle: theme.labelLarge,
                    ),
                    child: Text(
                      context.loc.cancel,
                      style: theme.bodyLarge?.copyWith(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                    onPressed: () {
                      context.read<LoginBloc>().add(LoginEvent.resetData());
                      widget.closeModal!();
                    },
                  ),
                  if (state.hasError)
                    Text(
                      state.errorMessage,
                      style: theme.bodyMedium?.copyWith(
                        color: AppColors.warningColor,
                      ),
                    ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

// Common style for Auth Input fields email and password
InputDecoration authInputStyle(
    IconData icon, IconData? suffixIcon, VoidCallback onSuffixIconClick) {
  return InputDecoration(
    filled: true,
    fillColor: AppColors.contentColorWhite,
    enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.1))),
    focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Colors.black.withOpacity(0.1))),
    contentPadding: const EdgeInsets.all(15),
    prefixIcon: Padding(
      padding: const EdgeInsets.only(left: 4),
      child: Icon(icon),
    ),
    suffixIcon: SizedBox(
      height: 16,
      width: 16,
      child: IconButton(
        onPressed: onSuffixIconClick,
        icon: Icon(suffixIcon),
      ),
    ),
  );
}
