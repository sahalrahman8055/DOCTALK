import 'package:doctalk/views/login_screen.dart';
import 'package:doctalk/views/register_screen.dart';
import 'package:flutter/material.dart';

class LOginOrRegister extends StatefulWidget {
  const LOginOrRegister({super.key});

  @override
  State<LOginOrRegister> createState() => _LOginOrRegisterState();
}

class _LOginOrRegisterState extends State<LOginOrRegister> {
  bool showLoginPage = true;

  void togglepages() {
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return LoginScreen(onTap: togglepages);
    } else {
      return RegisterScreen(
        onTap: togglepages,
      );
    }
  }
}
