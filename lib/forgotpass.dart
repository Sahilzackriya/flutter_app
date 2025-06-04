import 'package:flutter/material.dart';
import 'package:flutter_app/services.dart';

class forgotpass extends StatefulWidget {
const forgotpass({super.key});

  @override
  State<forgotpass> createState() => _forgotpassState();
}

class _forgotpassState extends State<forgotpass> {
  TextEditingController Emailcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        Column(
  children: [
    Text("ENTER YOUR REGISTERED EMAIL TO OTP",style: TextStyle(fontWeight: FontWeight.bold),
          ),
    TextField( controller: Emailcontroller,
            decoration: InputDecoration(filled: true,fillColor: Colors.blueGrey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), prefixIcon: Icon(Icons.email),hintText: "abcd@gmail.com"),
          ),SizedBox(height: 30,),

          ElevatedButton( 
            onPressed: () {
              resetlink(Email: Emailcontroller.text, context: context);
            }
              ,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 169, 169, 169),
              foregroundColor: const Color.fromARGB(255, 0, 0, 0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(25),
              ),
              minimumSize: Size(double.infinity, 50),
            ),
            child: Text("send OTP", style: TextStyle(fontWeight: FontWeight.bold)),
          ),


    
  ],
)
      )
      );
      
  }
}