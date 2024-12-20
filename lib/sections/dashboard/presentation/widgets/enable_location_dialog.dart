import 'package:advice/themes/color_extensions.dart';
import 'package:flutter/material.dart';

class EnableLocationDialog extends StatelessWidget {
  final VoidCallback onEnableLocation;
  final VoidCallback onSelectManually;

  const EnableLocationDialog(
      {super.key,
      required this.onEnableLocation,
      required this.onSelectManually});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Circular icon at the top
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.grey.shade200,
              child: Image.asset(
                'assets/images/location_icon.png',
                width: 24,
                height: 24,
              ),
            ),
            const SizedBox(height: 16),
            // Title
            Text(
              'Enable Location',
              style: theme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            // Subtitle
            Text(
              'We need access to your location to be able to use this service',
              textAlign: TextAlign.center,
              style: theme.bodyLarge?.copyWith(
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 24),
            // Enable Location button
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize:
                    Size(double.infinity, 50), // Make button full width
              ),
              onPressed: () {
                Navigator.pop(context); // Close the dialog
                onEnableLocation();
              },
              child: Text(
                'Enable Location',
                style: theme.bodyLarge?.copyWith(color: Colors.white),
              ),
            ),
            const SizedBox(height: 12),
            // Not Now button
            OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: BorderSide(color: AppColors.primary),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
                minimumSize: Size(double.infinity, 50),
              ),
              onPressed: () {
                Navigator.pop(context);
                onSelectManually();
              },
              child: Text(
                'Select Manually',
                style: theme.bodyLarge?.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
