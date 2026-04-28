import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Nmp7 extends StatefulWidget {
  const Nmp7({super.key});

  @override
  State<Nmp7> createState() => _Nmp7State();
}

class _Nmp7State extends State<Nmp7> {
  List<dynamic> data = [];
  bool isLoading = true;

  Future getData() async {
    final response = await http.get(
      Uri.parse('https://dummyjson.com/products'),
    );
    if (response.statusCode == 200) {
      setState(() {
        data = jsonDecode(response.body)['products'];
        isLoading = false;
        var jsonData = jsonDecode(response.body);
        data = jsonData['products'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          toolbarHeight: 80,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.orange, Colors.deepOrange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://thumbs.dreamstime.com/b/elegant-orange-batik-pattern-perfect-creating-stylish-backgrounds-digital-wallpapers-textile-designs-vector-art-422652525.jpg",
                ),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.grey.withOpacity(0.4),
                  BlendMode.dstATop,
                ),
              ),
            ),
          ),

          title: Row(
            children: [
              Expanded(
                flex: 8,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  height: 42,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      iconColor: Colors.orange,
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        color: Colors.orange,
                        size: 28,
                      ),
                      suffixIcon: Icon(
                        Icons.camera_alt_outlined,
                        size: 28,
                        color: Colors.grey,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(Icons.shopping_cart_outlined, size: 28),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Icon(Icons.chat, size: 28),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.deepOrange,
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    // QR
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.qr_code_scanner_outlined,
                            size: 30,
                            color: Colors.orange,
                          ),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),

                    // Divider
                    Container(width: 1, height: 40, color: Colors.grey[300]),

                    // Saldo
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.account_balance_wallet, size: 18),
                              SizedBox(width: 5),
                              Text(
                                "Rp300.000",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Cashback Saldo",
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // Divider
                    Container(width: 1, height: 40, color: Colors.grey[300]),

                    // Check-in
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.paid, size: 18),
                              SizedBox(width: 5),
                              Text(
                                "Cek-in!",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Klaim 25RB!",
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    // PayLater
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.credit_card, size: 18),
                              SizedBox(width: 5),
                              Text(
                                "SPayLater",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          SizedBox(height: 3),
                          Text(
                            "Diskon 50RB!",
                            style: TextStyle(fontSize: 11, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 10),
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        shape: BoxShape.circle,
                      ),
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          "Rp",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              padding: EdgeInsets.only(top: 5),
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              height: 125,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.vibration, color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Pulsa, Tagihan, Hiburan",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.fastfood, color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Shopee food",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.live_tv, color: Colors.white),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Shopee VIP x ChatGPT",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.sports_esports,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Shopee Games",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(Icons.local_shipping, color: Colors.white),
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Shopee Express",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                    offset: Offset(0, 5),
                  ),
                ],
                image: DecorationImage(
                  image: Image.asset("assets/shoope.png").image,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Container(
              child: GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,
                ),
                itemBuilder: (context, index) {
                  var item = data[index];
                  return Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          item['images'][0],
                          height: 150,
                          width: double.infinity,
                          fit: BoxFit.contain,
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          item['title'],
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.left,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          item['description'],
                          style: TextStyle(
                            fontWeight: FontWeight.w100,
                            fontSize: 12,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Text(
                            "${item['rating']} ★",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                        ),

                        SizedBox(height: 5),
                        Row(
                          children: [
                            Expanded(
                              flex: 2,
                              child: Text(
                                "Rp${item['price']}",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.orange,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Text("stock: ${item['stock']}"),
                            ),
                          ],
                        ),
                      ],
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
