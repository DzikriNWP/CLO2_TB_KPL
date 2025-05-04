import 'package:flutter/material.dart';
import 'controller/navigation_controller.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const SchoolBellApp());
}

class SchoolBellApp extends StatelessWidget {
  const SchoolBellApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School Bell',
      theme: ThemeData.dark().copyWith(
        textTheme: GoogleFonts.poppinsTextTheme(),
        scaffoldBackgroundColor: const Color(0xFFF9F9F8),
        primaryColor: Colors.blue,
      ),
      home: const MainNavigation(),
    );
  }
}
