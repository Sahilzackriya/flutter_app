import 'package:flutter/material.dart';
import 'package:flutter_app/loginpage.dart';
import 'package:flutter_app/register.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 250, 250, 249),
      body: Column(
        children: [
          Text(
            "WELCOME",
            style: TextStyle(
              color: Color.fromARGB(216, 0, 1, 12),
              fontWeight: FontWeight.bold,
            ),
          ),
          Image.network(
            "https://th.bing.com/th/id/OIP.g59bf1V5yJAIYWPzXLlumQHaHa?r=0&pid=ImgDet&w=179&h=179&c=7&dpr=1.3",height: 250,width: 200,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => loginpage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 169, 169, 169),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text("login", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => Signuppage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 144, 143, 143),
              foregroundColor: const Color.fromARGB(253, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text("register", style: TextStyle(fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
