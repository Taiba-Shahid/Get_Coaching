

import 'package:flutter/material.dart';

class HelloThere extends StatelessWidget {
  const HelloThere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 50),
          child: const Text(
            "Hello",
            style: TextStyle(
                color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 60, 70, 0),
          child: const Text(
            "There",
            style: TextStyle(
                color: Colors.black, fontSize: 50, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(
            190,
            33,
            70,
            0,
          ),
          child: const Text(
            ".",
            style: TextStyle(
                color: Colors.green, fontSize: 70, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
