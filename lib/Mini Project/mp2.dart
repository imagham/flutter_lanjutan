import 'package:flutter/material.dart';

class Mp2 extends StatelessWidget {
    Mp2({super.key});

  List<String> items = [
    "Laptop",
    "Mouse",
    "Keyboard",
    "Monitor",
    "Printer",
    "Headset",
    "Charger",
    "Bottle",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("MINI PROJECT 2",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child:PageView(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Flash Sale",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Flash Sale",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Flash Sale",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                   Container(
                    margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(child: Text("Flash Sale",style: TextStyle(color: Colors.white,fontSize: 20),)),
                  ),
                ],
              ),
            ),
            // ------------------------------
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
             child: Row(
              spacing: 15,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.shopping_bag,color: Colors.white,),
                        Text("Produk",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ) ,
                 ),
                  Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.local_offer,color: Colors.white,),
                        Text("Promo",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ) ,
                 ),
                  Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.category,color: Colors.white,),
                        Text("Kategori",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ) ,
                 ),
                  Expanded(
                  child:Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person,color: Colors.white,),
                        Text("Profile",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ) ,
                 ),
              ],
             )
            ),
            // ------------------------------
          Container(
            height:400,
             margin: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Laptop",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Mouse",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Keyboard",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Monitor",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Printer",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Headset",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Charger",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
                Container(
                  width: double.infinity,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 5),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Center(child: Text("Bottle",style: TextStyle(color: Colors.blueGrey,fontSize: 18),)),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("BAWAH COBA DOANG BUAT MAKE LIST VIEW BUILDER",style: TextStyle(color: Colors.blueGrey,fontSize: 18),),
          ),
          Container(
          height: 400,
          margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: 60,
          margin: EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.3),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Text(
              items[index],
              style: TextStyle(
                color: Colors.blueGrey,
                fontSize: 18,
              ),
            ),
          ),
        );
            },
          ),
        ),
          ],
        ),
      ),
    );
  }
}