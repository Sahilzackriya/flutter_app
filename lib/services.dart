import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/homepage.dart';

Future<void> Register({
  required String Username,
  required String Email,
  required String Password,
  required BuildContext context,
}) async {
  try {
    UserCredential userd = await FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: Email, password: Password);
    User? user = userd.user;

    await FirebaseFirestore.instance
        .collection("USERDETAILS")
        .doc(user?.uid)
        .set({"Name": Username, "Email": Email});
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text("account created successfully")));
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> signin(
  {
    required String Email,
    required String Password,
    required BuildContext context
  }
) async {
  try{
    await FirebaseAuth.instance.signInWithEmailAndPassword(email: Email, password: Password);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("LOGIN SUCCESSFUL")));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>homepage()));
  }
  catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}

Future<void> resetlink(
  {
    required String Email, required BuildContext context
  }
)async{
  try{
    await FirebaseAuth.instance.sendPasswordResetEmail(email: Email);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("link send , check your registered email")));

  }
  catch(e){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
  }
}