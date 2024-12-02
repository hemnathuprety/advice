
import 'package:advice/generated/l10n.dart';
import 'package:flutter/material.dart';

class LocalizationUtils {}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get loc => AppLocalizations.of(this);
}
