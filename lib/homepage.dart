import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white10,
      body: Column(
        children: [
          Text("hello sahil",style: TextStyle(
              color: Color.fromARGB(216, 0, 1, 12),
              fontWeight: FontWeight.bold,
            ),
            )
        ],
      )

      

    );
  }
}