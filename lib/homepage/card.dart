import 'package:flutter/material.dart';

Widget buildCard(String name, String status, int cardindex) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    elevation: 7,
    margin: cardindex.isEven
        ? const EdgeInsets.fromLTRB(10, 0, 25, 10)
        : const EdgeInsets.fromLTRB(25, 0, 5, 10),
    child: Column(
      children: [
        const SizedBox(
          height: 12,
        ),
        Stack(children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: const DecorationImage(
                    image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqtJhjLM-hj7Jm7VbW31cUBK5hXkJ6m-yMiw&usqp=CAU",
                ))),
          ),
          Container(
            margin: const EdgeInsets.only(left: 35),
            height: 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: status == "Away" ? Colors.amber : Colors.green,
                border: Border.all(
                    color: Colors.white, style: BorderStyle.solid, width: 2)),
            width: 20,
          ),
          const SizedBox(
            height: 8,
          ),
        ]),
        Text(
          name,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
        ),
        Text(
          status,
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 12, color: Colors.grey),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
            child: Container(
          width: 175,
          decoration: BoxDecoration(
              color: status == "Away" ? Colors.grey : Colors.green,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          child: const Center(
              child: Text(
            "Request",
            style: TextStyle(color: Colors.white),
          )),
        ))
      ],
    ),
  );
}
