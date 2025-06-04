import 'package:flutter/material.dart';

class forgotpass extends StatelessWidget {
forgotpass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
  children: [
    Text("ENTER YOUR REGISTERED EMAIL TO OTP",style: TextStyle(fontWeight: FontWeight.bold),
          ),
    TextField(
            decoration: InputDecoration(filled: true,fillColor: Colors.blueGrey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), prefixIcon: Icon(Icons.email),hintText: "abcd@gmail.com"),
          ),SizedBox(height: 30,),

          ElevatedButton(
            onPressed: () {}
              ,
            child: Text("send OTP", style: TextStyle(fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 169, 169, 169),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
          ),


    
  ],
)
      )
      );
      
  }
}