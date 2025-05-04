import 'package:flutter/material.dart';
import '../utils/config.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final config = RuntimeConfig();

    return Column(
      children: [
        SwitchListTile(
          title: const Text('Enable Bell Sound'),
          value: config.enableSound,
          onChanged: (value) {
            config.enableSound = value;
          },
        ),
      ],
    );
  }
}
