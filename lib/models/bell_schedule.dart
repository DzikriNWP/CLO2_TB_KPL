import 'package:flutter/material.dart';
import '../utils/contract.dart';

class BellSchedule {
  final TimeOfDay time;
  final String label;

  BellSchedule(this.time, this.label) {
    Contract.requires(label.isNotEmpty, 'Label cannot be empty');
  }

  static List<BellSchedule> defaultSchedules() => [
        BellSchedule(const TimeOfDay(hour: 8, minute: 0), 'Start Class'),
        BellSchedule(const TimeOfDay(hour: 10, minute: 0), 'Break Time'),
      ];
}
