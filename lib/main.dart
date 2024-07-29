import 'package:flutter/material.dart';
import 'package:practo_main/features/bottom_nav_bar/bottom_nav.dart';
import 'package:practo_main/features/consult%20doctor/consult_doctor.dart';
import 'package:practo_main/features/find_doctor/find_doctor.dart';
import 'package:practo_main/features/splash_screen/splash_screen.dart';

import 'features/home/presentation/pages/home_screen.dart';
import 'common/widgets/doctorslist.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Practo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
