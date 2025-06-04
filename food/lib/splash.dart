import 'package:flutter/material.dart';
import 'package:flutter_app/login.dart';
import 'package:lottie/lottie.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override 
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()
       ),);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 0, 50),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Lottie.asset("assets/animation.json")),
        Text(
          "BY META",
          style: TextStyle(
            color: const Color.fromARGB(255, 247, 242, 229),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        )
      ],  
      ),);
    
  }
}