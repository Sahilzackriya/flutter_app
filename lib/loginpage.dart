import 'package:flutter/material.dart';
import 'package:flutter_app/forgotpass.dart';

class loginpage extends StatelessWidget {
   loginpage({super.key});

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
            
          TextField(
            decoration: InputDecoration(filled: true,fillColor: Colors.blueGrey,border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)), prefixIcon: Icon(Icons.email),hintText: "abcd@gmail.com"),
          ),SizedBox(height: 30,),
          TextField(obscureText: true,
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
          ElevatedButton(onPressed: (){}, child: 
          Text("login",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue)),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.black
          )
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("i dont have an account", style: TextStyle(
              color: Color.fromARGB(216, 0, 1, 12),
              fontWeight: FontWeight.bold,
            ),),
            TextButton(onPressed: () {}, child:
            Text("sign up",style: TextStyle(fontWeight: FontWeight.w600),)
            )
            
         ], )
            ],
          )

      
    
      ),
    );
  }
}