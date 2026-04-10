import 'package:flutter/material.dart';

class Mp5 extends StatefulWidget {
  const Mp5({super.key});

  @override
  State<Mp5> createState() => _Mp5State();
}

class _Mp5State extends State<Mp5> {
  @override
  Widget menuCard(IconData icon, String title, Color color) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    height: 120,
    width: 200,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2),
          spreadRadius: 3,
          blurRadius: 6,
          offset: const Offset(2, 4),
        ),
      ],
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color, size: 40),
        const SizedBox(height: 10),
        Text(title,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: color)),
      ],
    ),
  );
}
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer( // ✅ pindahin ke sini
    child: ListView(
      padding: EdgeInsets.zero,
      children: const [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menu'),
        ),
      
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
          ListTile(
          leading: Icon(Icons.send),
          title: Text('Transfer'),
        ),
      ],
    ),
  ),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          
            Container(
              decoration: BoxDecoration(
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Bank',style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                  Text('Noriba',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white),textAlign: TextAlign.left,),
                 
                ],
              ),
            ),
             Row(
                children: const [
                  Icon(Icons.account_circle, color: Colors.white, size: 45),
                ],
              ),
          ],
        ),
        backgroundColor: const Color.fromARGB(255, 124, 180, 223),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
            child: PageView(
              children: [
                  Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blue.shade300.withOpacity(0.8),
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 4,
                    blurRadius: 4,
                    offset: const Offset(4, 10),
                  ),
                ],
              ),
              child: 
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: Row(
                      children: [
                        Image.asset('assets/money.png', width: 40, ),
                        SizedBox(width: 10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Kantong Utama',style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),textAlign: TextAlign.left,),
                            Row(
                              children: [
                                Text('6498720722433',style: TextStyle(fontSize: 14,color: Colors.white),textAlign: TextAlign.left,),
                               SizedBox(width: 10),
                                Icon(Icons.copy, color: Colors.black, size: 20),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 90),
                        Row(
                          children: [
                            Text("Rp1.000.000",style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,),textAlign: TextAlign.left,),
                            SizedBox(width: 10),
                            Icon(Icons.visibility_off_outlined)
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 59,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.send, color: Colors.blue),
                            SizedBox(height: 4),
                            Text('Transfer', style: TextStyle(fontSize: 12, color: Colors.blue)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.request_page, color: Colors.blue),
                            SizedBox(height: 4),
                            Text('Minta', style: TextStyle(fontSize: 12, color: Colors.blue)),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.qr_code_scanner, color: Colors.blue),
                            SizedBox(height: 4),
                            Text('Scan', style: TextStyle(fontSize: 12, color: Colors.blue)),
                          ],
                        ),
                      ]
                    ),
                  )
                ],
              ),
            )
              ],
            ),
            ),
            
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                    ),
                   child:  Padding(
                     padding: const EdgeInsets.symmetric(horizontal:10, vertical: 25),
                     child: Row(
                      children: [
                        Icon(Icons.account_balance_wallet_outlined, color: Colors.white),
                        SizedBox(width: 10),
                        Text('Kantong Saya', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                      ],
                     ),
                   )
                  ),
                  
                  ElevatedButton(onPressed: (){},
                   style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade300,
                    ),
                   child:  Padding(
                     padding: const EdgeInsets.symmetric(horizontal:20, vertical: 25),
                     child: Row(
                      children: [
                        Icon(Icons.qr_code_scanner, color: Colors.white),
                        SizedBox(width: 10),
                        Text('Scan QRIS', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.white)),
                      ],
                     ),
                   ))
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Spotlight', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Lihat Semua', style: TextStyle(fontSize: 14, color: Colors.blue,)),
                ],
              ),
            ),
            Container(
              height: 200,
              child: PageView(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade300.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 6,
                          offset: const Offset(2, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Promo Spesial', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                        SizedBox(height: 10),
                        Text('Dapatkan cashback hingga 50% untuk setiap transaksi!', style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Promo Spesial', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          SizedBox(height: 10),
                          Text('Dapatkan cashback hingga 50% untuk setiap transaksi!', style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.blue.shade300.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 3,
                            blurRadius: 6,
                            offset: const Offset(2, 4),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Promo Spesial', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                          SizedBox(height: 10),
                          Text('Dapatkan cashback hingga 50% untuk setiap transaksi!', style: TextStyle(fontSize: 14, color: Colors.white), textAlign: TextAlign.center),
                        ],
                      ),
                    )
                ],
              ),
            ),
            SizedBox(height: 20),
               Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shortcuts', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Edit', style: TextStyle(fontSize: 16, color: Colors.blue,fontWeight: FontWeight.w700)),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Wrap(
            children: [
             
              menuCard(Icons.volunteer_activism, "Sedekah", Colors.blue),
              menuCard(Icons.monetization_on, "Zakat", Colors.green),
              menuCard(Icons.favorite, "Infaq", Colors.red),
              menuCard(Icons.account_balance, "Wakaf", Colors.purple),
              menuCard(Icons.card_giftcard, "Donasi", Colors.orange),
              menuCard(Icons.handshake, "Bantuan", Colors.teal),
            ],
          ),
            ),
          ],
        ),
      ),
   bottomNavigationBar: BottomNavigationBar(
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Beranda',
      backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.volunteer_activism),
      label: 'Donasi',
      backgroundColor: Colors.green,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.history),
      label: 'Riwayat',
      backgroundColor: Colors.grey,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.account_circle),
      label: 'Akun',
    ),
  ],
),
    );
  }
}