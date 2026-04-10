import 'package:flutter/material.dart';

class Mp4 extends StatefulWidget {
  const Mp4({super.key});

  @override
  State<Mp4> createState() => _Mp4State();
}

class _Mp4State extends State<Mp4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text("AGAM MART" , style: TextStyle(color: Colors.teal, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_rounded, color: Colors.teal,size: 35,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              child: PageView(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                 Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                child: Text("Lihat Semua Promo" , style: TextStyle( fontWeight: FontWeight.bold),)),
            ),
            Container(
              child:Center(
                child: Wrap(
                  
                  spacing: 30,
                   runSpacing: 20,
                  
                  children: [
                     Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                    
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                      Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.blueGrey,
                            shape: BoxShape.circle
                          ),
                        ),
                        SizedBox(height: 8),
                        Text("Produk Online" , style: TextStyle(fontSize: 10),)
                      ],
                    ),
                  
                  ],
                ),
              ) 
            ),
            Container(
              height: 300,
              child:SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    spacing: 20,
                    children: [
                      Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                   
                    Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                  
                       Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                  
                       Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                  
                       Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                  
                       Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                  
                       Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                  
                       Container(
                        height: 200,
                        width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.blueGrey, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.blueGrey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 6,
                            offset: Offset(2, 5), // changes position of shadow
                          ),
                        ],
                     ),
                        child: Column(
                          children: [
                            Image.asset("assets/burger.png" , width: 120,),
                            Text("Burger Cheese" , style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                            SizedBox(height: 8),
                            Text("Rp. 20.000" , style: TextStyle(fontSize: 14, color: Colors.white),)
                          ],
                        ),
                      ),
                   ],
                  ),
                ),
              ) ,
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.teal,),
            label: "Home"
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.teal,),
            label: "Cart"
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.account_circle, color: Colors.teal,),
            label: "Account"    
         ),
        ]
      )
    );
  }
}