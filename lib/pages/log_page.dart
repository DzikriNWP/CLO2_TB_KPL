import 'package:flutter/material.dart';

class LogPage extends StatelessWidget {
  const LogPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Simulasi log
    final logs = [
      '08:00 Bell Ringed',
      '10:00 Bell Ringed',
    ];

    return ListView(
      children: logs.map((log) => ListTile(title: Text(log))).toList(),
    );
  }
}
