import 'package:flutter/material.dart';
import '../models/bell_schedule.dart';

class SchedulePage extends StatelessWidget {
  const SchedulePage({super.key});

  @override
  Widget build(BuildContext context) {
    final schedules = BellSchedule.defaultSchedules();

    return ListView.builder(
      itemCount: schedules.length,
      itemBuilder: (context, index) {
        final schedule = schedules[index];
        return ListTile(
          title: Text('Bell at ${schedule.time.format(context)}'),
          subtitle: Text(schedule.label),
        );
      },
    );
  }
}
