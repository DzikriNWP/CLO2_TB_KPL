import 'package:flutter/material.dart';
import '../pages/home_page.dart';
import '../pages/schedule_page.dart';
import '../pages/log_page.dart';
import '../pages/settings_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _pages = const [
    HomePage(),
    SchedulePage(),
    LogPage(),
    SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Container(
            width: 200,
            color: const Color(0xFF2E415A),
            child: Column(
              children: [
                const SizedBox(height: 32),
                navItem(icon: Icons.home, label: 'Home', index: 0),
                navItem(icon: Icons.schedule, label: 'Schedule', index: 1),
                navItem(icon: Icons.list, label: 'Log', index: 2),
                navItem(icon: Icons.settings, label: 'Settings', index: 3),
              ],
            ),
          ),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(child: _pages[_currentIndex]),
        ],
      ),
    );
  }

  Widget navItem(
      {required IconData icon, required String label, required int index}) {
    final bool selected = _currentIndex == index;
    return InkWell(
      onTap: () => setState(() => _currentIndex = index),
      child: Container(
        color: selected ? Colors.blue.withOpacity(0.2) : Colors.transparent,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(icon, color: selected ? Colors.white : Colors.white70),
            const SizedBox(width: 12),
            Text(
              label,
              style: TextStyle(
                color: selected ? Colors.white : Colors.white70,
                fontWeight: selected ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
