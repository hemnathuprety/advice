import 'package:advice/core/components/custom_app_back_dart.dart';
import 'package:advice/core/utils/dialog_utils.dart';
import 'package:advice/core/utils/localization_utils.dart';
import 'package:advice/core/utils/shared_pref_manager.dart';
import 'package:advice/sections/dashboard/presentation/blocs/profile_bloc.dart';
import 'package:advice/sections/dashboard/presentation/widgets/auth_button_widget.dart';
import 'package:advice/sections/setting/presentation/screens/language_selection_dialog.dart';
import 'package:advice/themes/color_extensions.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key, required this.onSignInClick});

  final VoidCallback onSignInClick;

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  bool notificationSettings = false;

  void openLanguageDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return LanguageSelectionDialog(
          onLanguageChanged: (p0) {
            LocalizationUtils.changeLocale(p0.languageCode, context);
          },
        );
      },
    );
  }

  final WidgetStateProperty<Icon?> thumbIcon =
      WidgetStateProperty.resolveWith<Icon?>(
    (Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  Future<void> getNotificationSettings() async {
    notificationSettings =
        await SharedPrefManager.instance.getNotificationSetting();
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getNotificationSettings();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
        appBar: CustomAppBackDart(
          title: context.loc.setting,
        ),
        body: BlocBuilder<ProfileBloc, ProfileState>(
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 80,
                              height: 80,
                              child: CircleAvatar(
                                backgroundColor:
                                    AppColors.primaryTextColor.withOpacity(0.2),
                                foregroundColor: AppColors.primary,
                                child: const Icon(
                                  Icons.person_outline,
                                  size: 48,
                                ),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              (state.profileModel != null)
                                  ? state.profileModel?.user?.username ?? ""
                                  : context.loc.titleFull,
                              style: theme.titleMedium,
                            ),
                            Text(
                              (state.profileModel != null)
                                  ? state.profileModel?.user?.email ?? ""
                                  : "",
                              style: theme.bodyMedium,
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      context.loc.preferences,
                      style: theme.titleMedium,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                title: Text(context.loc.language,
                                    style: theme.bodyLarge),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                onTap: () => openLanguageDialog(context),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 4),
                              ),
                              SwitchListTile(
                                contentPadding: EdgeInsets.all(0.0),
                                title: Text(context.loc.notificationSettings,
                                    style: theme.bodyLarge),
                                value: notificationSettings,
                                thumbIcon: thumbIcon,
                                onChanged: (value) {
                                  setState(() {
                                    notificationSettings = value;
                                  });
                                  SharedPrefManager.instance
                                      .setNotificationSetting(
                                          notificationSettings);
                                },
                              ),
                            ],
                          ).toList(),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      context.loc.supportLegal,
                      style: theme.titleMedium,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Card(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Column(
                          children: ListTile.divideTiles(
                            context: context,
                            tiles: [
                              ListTile(
                                title: Text(context.loc.FAQs,
                                    style: theme.bodyLarge),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 4),
                              ),
                              ListTile(
                                title: Text(context.loc.emergencyContacts,
                                    style: theme.bodyLarge),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 4),
                                onTap: () {
                                  AutoRouter.of(context)
                                      .pushNamed("/emergency_contact");
                                },
                              ),
                              ListTile(
                                title: Text(context.loc.aboutUs,
                                    style: theme.bodyLarge),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 4),
                              ),
                              ListTile(
                                title: Text(context.loc.privacyPolicy,
                                    style: theme.bodyLarge),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 4),
                              ),
                              ListTile(
                                title: Text(context.loc.termsConditions,
                                    style: theme.bodyLarge),
                                trailing: const Icon(
                                  Icons.arrow_forward_ios,
                                  size: 20,
                                ),
                                contentPadding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 4),
                              ),
                            ],
                          ).toList(),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () async {
                        if (state.profileModel != null) {
                          final bool shouldLogout =
                              await DialogUtils.showLogoutDialog(context) ??
                                  false;
                          if (shouldLogout && context.mounted) {
                            context
                                .read<ProfileBloc>()
                                .add(ProfileEvent.logout());
                          }
                        } else {
                          widget.onSignInClick();
                        }
                      },
                      child: AuthButtonWidget(
                        state: state,
                        margin: const EdgeInsets.only(
                            left: 8, right: 8, top: 16, bottom: 24),
                      ),
                    ),
                    const SizedBox(
                      height: 120,
                    ),
                  ],
                ),
              ),
            );
          },
        ));
  }
}
