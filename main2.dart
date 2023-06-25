import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman kedua"),
      ),
      body: ElevatedButton(
        child: Text("Back"),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
