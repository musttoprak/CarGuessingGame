import 'package:car_guessing_game/data/strings.dart';
import 'package:car_guessing_game/views/home_page.dart';
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(),
      ),
      home: const SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return loadingScreen();
  }

  EasySplashScreen loadingScreen() {
    return EasySplashScreen(
      logo: const Image(image: AssetImage("assets/guesscar.jpg")),
      title: const Text(
        "Guess The Car",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: Colors.blue.shade400,
      showLoader: true,
      loadingText: const Text("Yükleniyor..."),
      navigator: const HomePage(),
      durationInSeconds: 4,
    );
  }
}
