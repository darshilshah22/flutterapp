import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Retro Lights"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Retro Lights."),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
