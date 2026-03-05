import 'dart:math';

import 'package:flutter/material.dart';

class Mp1 extends StatelessWidget {
  const Mp1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("MINI PROJECT 1",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey,
                    ),
                    Row(
                      spacing: 10,
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 10),
                            height: 200,
                            color: Colors.grey,
                          ),
                        ),
                            Expanded(
                          child: Container(
                            height: 200,
                            color: Colors.grey,
                          ),
                          
                        ),
                    ],
                   )
                  ],
                ),
              ),
          ),
          Container(
            child:SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  spacing: 10,
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                      Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                      Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                      Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                      Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                      Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                      Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ],
                ),
              ),
            ) ,
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
                  height: 200,
                  child: Row(
                    children: [
                      Expanded(
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
                       Expanded(
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
                       Expanded(
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
                   ]  ,
                  ),
                ),
          ),
         ],
        ),
      ),
    );
  }
}