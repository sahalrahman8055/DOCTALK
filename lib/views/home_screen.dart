import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      body: Container(),
      backgroundColor: const Color.fromRGBO(218, 255, 233, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(76, 195, 123, 1.0),
        title: const Text("Home"),
      ),
    );
  }
}
