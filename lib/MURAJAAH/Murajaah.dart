import 'dart:math';

import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Center(child: const Text('Murajaah Flutter',style: TextStyle(color: Colors.white),)),
      ),
      body: Center(
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 430,
                  width: 200,
                  margin: const EdgeInsets.all(10),
                  color: Colors.brown,
                  
                ),
                Column(
                  children: [
                     Container(
                      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                      height: 200,
                      width: 200,
                      color: Colors.brown,
                      
                    ),
                    Container(
                      margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 200,
                      color: Colors.brown,
                      
                    ),
                  ],
                ),
               
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 70,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    shape: BoxShape.circle,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}