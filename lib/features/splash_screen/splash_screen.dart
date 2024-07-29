import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:practo_main/features/home/presentation/pages/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToLoginScreen();
  }

  _navigateToLoginScreen() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    if (mounted) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen(),));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
      color:Color(0xff253292),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body:  Center(
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '•',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff00B8FE),
                      ),
                    ),
                    TextSpan(
                      text: ' practo ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                    TextSpan(
                      text: '•',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff00B8FE),
                      ),
                    ),
                  ],
                ),
              ),
              Text("India’s top doctors to guide you\n   to better health every day ",style:TextStyle(fontSize: 10,color: Colors.white),)
            ],
          ),
        ),

      ),
    );
  }
}