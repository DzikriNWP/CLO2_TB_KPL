import 'package:flutter/material.dart';
import '../data/bell_schedule_table.dart';
import '../utils/time_utils.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bell Schedule')),
      body: ListView.builder(
        itemCount: bellScheduleTable.length,
        itemBuilder: (context, index) {
          final item = bellScheduleTable[index];
          return ListTile(
            title: Text(item['label']!),
            subtitle: Text(TimeUtils.formatTime(item['time']!)),
            leading: const Icon(Icons.notifications),
          );
        },
      ),
    );
  }
}

void validateAndPrintTime(String inputTime) {
  if (!TimeUtils.isValidTimeFormat(inputTime)) {
    debugPrint('Format waktu tidak valid: $inputTime');
  } else {
    debugPrint('Format waktu valid: ${TimeUtils.formatTime(inputTime)}');
  }
}
