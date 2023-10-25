import 'package:flutter/material.dart';

class Apply extends StatelessWidget {
  const Apply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Applied"),
      ),
      body: Center(
        child: Text("You Applied Succesfully..!"),
      ),
    );
  }
}
