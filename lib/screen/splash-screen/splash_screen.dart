import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import '../slider-screen/slider_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToNextScreen();
  }

  _navigateToNextScreen() {
    Future.delayed(const Duration(milliseconds: 6000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const SliderScreen()));
  }

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF6F4E37),
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/splash-screen.jpeg',
            height: screenHeight,
            width: screenWidth,
            fit: BoxFit.cover,
          ),
          Positioned(
              top: 60,
              right: 60,
              child: Animate(
                effects: [FadeEffect(duration: 3000.ms), const SlideEffect()],
                child: const Text(
                  "CHAI CRAFT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )),
          Positioned(
            bottom: 50,
            right: 40,
            child: GestureDetector(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SliderScreen()),
                  );
                },
                child: const Icon(
                  Icons.arrow_forward_ios,
                  size: 30,
                  color: Colors.white,
                ).animate().fade().shake()),
          ),
        ],
      ),
    );
  }
}
