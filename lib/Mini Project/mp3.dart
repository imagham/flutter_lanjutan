import 'package:flutter/material.dart';

class Mp3 extends StatefulWidget {
  const Mp3({super.key});

  @override
  State<Mp3> createState() => _Mp3State();
}

class _Mp3State extends State<Mp3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini Project 3"),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            child: PageView(
              children: [
                Container(
                  color: Colors.purple,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
           child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("menu 1")),
              ),
              Container(
                height: 50,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(child: Text("menu 2")),
              ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("menu 3")),
                ),
                Container(
                  height: 50,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("menu 4")),
                ),
            ],
           ),
          ),
          Container(
            child:   Column(
              spacing: 10,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.blueGrey,
                ),
               Row(
                spacing: 10,
                  children: [
                    Expanded(
                      child: Container(
                        height: 150,
                        color: Colors.blueGrey,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 150,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )

        ],
      ),
    ) ;
  }
}