import 'package:flutter/material.dart';

class Murajaah3 extends StatefulWidget {
  const Murajaah3({super.key});

  @override
  State<Murajaah3> createState() => _Murajaah3State();
}

class _Murajaah3State extends State<Murajaah3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Center(child: Text("Hello world")),
            ),
            Row(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
               
              ],
            ),
            Container(
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nama: Fadgham Khairul Hafizh"),
                  Text("Tanggal Lahir: 12-Desember-2008"),
                  Text("Alamat: Perum Teratai Gria Asri Blok G4 No. 4"),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.red,
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    color: Colors.green,
                  ),
                ),
                
              ],
            ),
            SizedBox(height: 30,),
            Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.red,
                ),
               Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        height: 100,
                        color: Colors.green,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        height: 100,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}