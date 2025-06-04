import 'package:flutter/material.dart';
import 'package:flutter_app/forgotpass.dart';
import 'package:flutter_app/homepage.dart';
import 'package:flutter_app/register.dart';
import 'package:flutter_app/services.dart';

class loginpage extends StatefulWidget {
   const loginpage({super.key});

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  TextEditingController Emailcontroller = TextEditingController();
  TextEditingController Passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("login page", style: TextStyle(
              color: Color.fromARGB(216, 0, 1, 12),
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 30,),
            
          TextField( controller: Emailcontroller,
            decoration: InputDecoration(filled: true,fillColor: Colors.blueGrey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), prefixIcon: Icon(Icons.email),hintText: "abcd@gmail.com"),
          ),SizedBox(height: 30,),
          TextField( controller: Passwordcontroller,
            obscureText: true,
            decoration: InputDecoration(
              filled: true,fillColor: Colors.blueGrey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              prefixIcon: Icon(Icons.password),
              suffixIcon: Icon(Icons.visibility_off),hintText: "password")
          ),
          TextButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => forgotpass()));
          }, child: 
          Text("forgot password",
          style: TextStyle(fontWeight: FontWeight.bold),
          )
          ),
          ElevatedButton(onPressed: (){
           signin(Email: Emailcontroller.text, Password: Passwordcontroller.text, context: context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black
          ), child: 
          Text("login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue))
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("i dont have an account", style: TextStyle(
              color: Color.fromARGB(216, 0, 1, 12),
              fontWeight: FontWeight.bold,
            ),),
            TextButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => Signuppage()));

            }, child:
            Text("sign up",style: TextStyle(fontWeight: FontWeight.w600),)
            )
            
         ], )
            ],
          )

      
    
      ),
    );
  }
}