import 'package:doctalk/views/bottom_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  final Function()? onTap;
  const LoginScreen({
    Key? key,
    required this.onTap,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(76, 195, 123, 1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Icon(
                Icons.person,
                size: 150,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Username...",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Password...",
                hintStyle: const TextStyle(color: Colors.grey),
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Not a User ?..",
                style: TextStyle(color: Colors.white),
              ),
              const SizedBox(width: 20),
              GestureDetector(
                onTap: widget.onTap,
                child: const Text(
                  "Tap to Registration",
                  style: TextStyle(color: Color.fromARGB(255, 5, 110, 196)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          SizedBox(
            width: 200, // Adjust width as needed
            height: 50, // Adjust height as needed
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const BottomScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                shadowColor: Colors.black,
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10.0), // Add rounded corners
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(
                  color: Color.fromRGBO(76, 195, 123, 1.0),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
