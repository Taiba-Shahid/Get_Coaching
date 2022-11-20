import 'package:flutter/material.dart';

class TextfeidElement extends StatelessWidget {
  const TextfeidElement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 50, 20, 20),
          child: const TextField(
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: const TextField(
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle:
                  TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.only(left: 280),
          child: const Text(
            "Forgot Password?",
            style: TextStyle(
                color: Colors.green,
                fontSize: 10,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.underline),
          ),
        ),
      ],
    );
  }
}
