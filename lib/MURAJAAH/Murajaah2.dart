import 'package:flutter/material.dart';

class Murajaah2 extends StatelessWidget {
  const Murajaah2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                  child: Container(
                    height: 300,
                    color: Colors.indigo,
                  ),
                ),
                 Expanded(
                  flex: 2,
                   child: Container(
                    height: 300,
                    color: Colors.grey,
                ),
               )
              ],
            ),
        
            // page view
            SizedBox(
              height: 300,
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
               ]  ,
              ),
            ),
           SizedBox(
              height: 300,
              width: 300,
             child: ListView(
                children: [
                  Container(
                    height: 100,
                    color: Colors.red,
                  ),
                  Container(
                    height: 100,
                    color: Colors.blue,
                  ),
                  Container(
                    height: 100,
                    color: Colors.yellow,
                  ),
                ],
              ),
           ),
           SizedBox(
            height: 100,
            child: PageView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }),
           )
        
          ],
          
        ),
      ),
    );
  }
}