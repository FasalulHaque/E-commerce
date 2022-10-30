import 'package:flutter/material.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    _gotLoginPage();
    super.initState();
  }

  // ignore: unused_element
  _gotLoginPage() async {
    await Future.delayed(const Duration(milliseconds: 2500));
    // ignore: use_build_context_synchronously
    Navigator.pushNamed(context, 'Login');
  }

  // ignore: annotate_overrides
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            Image.asset(
                'asset/image/trusted-seller-stamp-logo-design_468322-18.webp',
                height: 400),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
