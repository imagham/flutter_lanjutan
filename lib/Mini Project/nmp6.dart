import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Nmp6 extends StatefulWidget {
  const Nmp6({super.key});

  @override
  State<Nmp6> createState() => _Nmp6State();
}

class _Nmp6State extends State<Nmp6> {
  List<dynamic> data = []; /*dynamic agar supaya bisa menampung berbagai tipe data */
  bool isLoading = true;

  Future ambildata() async {
    var response = await http.get(Uri.parse('https://dummyjson.com/products')
    ); /*Uri.parse untuk mengubah string menjadi Uri yang dapat digunakan dalam permintaan HTTP */


    if(response.statusCode == 200){
      setState(() {
        var hasil = jsonDecode(response.body);
        data = hasil['products']; /*mengambil data dari key 'products' dalam hasil JSON */
        isLoading = false;
      });
    } else {
      print('Gagal mengambil data');
    }
  } 

  @override

  void initState(){
    super.initState();
    ambildata();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('AGAM ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                    Text('MART',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                  ],
                ),
                Icon(Icons.shopping_cart,size: 48,),
              ],

            ),
            Container(
              width: 250,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            Row(
              children: [
                Icon(Icons.menu,size: 30,),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.grey,
        shadowColor: Colors.transparent,
      ),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              height: 250,
             child:PageView(
                children: data.skip(5).take(4).map((item) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: ClipRRect(
                      /*ClipRRect digunakan untuk memotong widget anak dengan bentuk tertentu, dalam hal ini dengan border radius agar gambar memiliki sudut yang melengkung. */
                      borderRadius: BorderRadius.circular(20),
                      child: Stack(
                        children: [
                          // IMAGE
                          Positioned.fill(
                            child: Image.network(
                              item['images'][0],
                              fit: BoxFit.cover,
                            ),
                          ),
        
                          // GRADIENT OVERLAY
                          Positioned.fill(
                            child: Container(
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.transparent,
                                    Colors.black.withOpacity(0.7),
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                          ),
        
                          // CONTENT TEXT
                          Positioned(
                            bottom: 20,
                            left: 20,
                            right: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  item['title'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 8),
                                Text(
                                  item['description'],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Rp ${item['price']}",
                                  style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
        
                          // OPTIONAL BADGE (PROMO)
                          Positioned(
                            top: 15,
                            left: 15,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Text(
                                "PROMO",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }).toList(),
              )
            ),
          Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    Expanded(child: Divider(thickness: 1)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        "Rekomendasi",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(child: Divider(thickness: 1)),
                  ],
                ),
              ),
              SizedBox(height: 20,),
            // LISTVIEW
            Container(
                height: 1400,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: GridView.builder(
                  itemCount: 7,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // 2 kolom
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.7, // atur tinggi card
                  ),
                  itemBuilder: (context, index) {
                    var item = data[index];

                    return Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // IMAGE
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              item['images'][0],
                              height: 120,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(height: 8),

                          // TITLE + FAVORITE
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  item['title'],
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Icon(Icons.favorite, color: Colors.red, size: 18),
                            ],
                          ),

                          SizedBox(height: 6),

                          // PRICE
                          Text(
                            "Rp ${item['price']}",
                            style: TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          SizedBox(height: 6),

                          // DESCRIPTION
                          Text(
                            item['description'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(fontSize: 12),
                          ),
                           Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green, // warna tombol
                                  foregroundColor: Colors.white, // warna teks
                                  padding: EdgeInsets.symmetric( vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                ),
                                   child: Text('BUY')),
                              ),

                                SizedBox(
                                  width: 10,
                                  ),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey, // warna tombol
                                  foregroundColor: Colors.white, // warna teks
                                  padding: EdgeInsets.symmetric( vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                ),
                                   child: Icon(Icons.shopping_cart)
                                   ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    );
                  },
                ),
              ),
              Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              children: [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "PROMO",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
          ),
            SizedBox(height: 20),
             Container(
              height: 500,
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  var item = data[index];
                  return Wrap(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            Image.network(
                              item['images'][0],
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                            SizedBox(width: 16),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        item['title'],
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Icon(Icons.favorite,color: Colors.red,)
                                    ],
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Rp ${item['price']}",
                                    style: TextStyle(
                                      color: Colors.greenAccent,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
        
                                  ),
                                  SizedBox(height: 10,),
                                  Text(item['description'],
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,)
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  );
                },
              ),
            ),
            
        Padding(
  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
  child: Row(
    children: [
      Expanded(child: Divider(thickness: 1)),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text(
          "TOP SALE",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Expanded(child: Divider(thickness: 1)),
    ],
  ),
),
            Container(
              margin: EdgeInsets.all(10),
             height: 290,
              child:ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 6, // karena 10 sampai 15 = 6 item
                itemBuilder: (context, index) {
                  var item = data[index + 10]; 
                  return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 5,
                              offset: Offset(0, 3),
                            ),
                          ],
                        ),
                    width: 180,
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Image.network(
                                item['images'][0],
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                        ),
                            SizedBox(height: 7,),
                        Text( 
                          item['title'],
                          style: TextStyle(fontSize: 14,fontWeight:FontWeight.bold),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 10,),
                          Text(
                          "Rp ${item['price']}",
                           style: TextStyle(
                             color: Colors.greenAccent,
                             fontSize: 14,
                             fontWeight: FontWeight.bold,
                          ),
                          
        
                          ),

                          Text(item['description'],
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 12),
                          ),
                          SizedBox(height: 5,),
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.green, // warna tombol
                                  foregroundColor: Colors.white, // warna teks
                                  padding: EdgeInsets.symmetric( vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                ),
                                   child: Text('BUY')),
                              ),
                                 SizedBox(width: 5,),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blueGrey, // warna tombol
                                  foregroundColor: Colors.white, // warna teks
                                  padding: EdgeInsets.symmetric( vertical: 15),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  elevation: 5,
                                ),
                                   child: Icon(Icons.shopping_cart)
                                   ),
                              ),
                            ],
                          ),

                      ],
                    ) ,
                  );
                },
              ) ,
            )
          ],
        ),
      )
      
     
     
    );
  }
}