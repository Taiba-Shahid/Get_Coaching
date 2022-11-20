import 'package:flutter/material.dart';
import 'package:get_coaching/homepage/card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: FlutterLogo(
            size: 20,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
          onPressed: (() {}),
        ),
        actions: [
          IconButton(
            onPressed: (() {}),
            icon: const Icon(Icons.menu, color: Colors.grey),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Container(
                  alignment: const Alignment(0, -0.4),
                  color: Colors.white,
                  height: 100,
                  child: const Text(
                    "Get Coaching",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  )),
              Container(
                margin: const EdgeInsets.fromLTRB(25, 90, 25, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(
                      children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(25, 25, 5, 5),
                          child: const Text(
                            "You Have",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(25, 50, 5, 20),
                          child: const Text(
                            "206",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 80,
                    ),
                    Container(
                      height: 50,
                      alignment: Alignment.center,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent[100]?.withOpacity(0.5),
                          borderRadius: BorderRadius.circular(10)),
                      child: const Text(
                        "Buy more",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.green),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 35, 20, 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "My Coaches",
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
                Text(
                  "View Past Sessions",
                  style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          GridView.count(
            primary: false,
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            shrinkWrap: true,
            children: [
              buildCard("Taiba", "Available", 2),
              buildCard("Taiba", "Away", 2),
              buildCard("Taiba", "Away", 2),
              buildCard("Taiba", "Available", 2),
              buildCard("Taiba", "Available", 2),
            ],
          ),
        ],
      ),
    );
  }
}
