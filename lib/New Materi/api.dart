import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Api extends StatefulWidget {
  const Api({super.key});

  @override
  State<Api> createState() => _ApiState();
}

class _ApiState extends State<Api> {
  List data = []; /*dynamic agar supaya bisa menampung berbagai tipe data */
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
        title: Text(" Latihan Ambil Data API"),

      ),
      body: isLoading
      ? Center(child: CircularProgressIndicator())
      : ListView(
        children:data.take(5).map((item){
          /*take(5) digunakan untuk mengambil hanya 5 data pertama dari daftar data yang diambil dari API.*/


          // return ListTile (
          //   title: Row(
          //     children: [
          //       Text('Nama : '),
          //       Image(image:  NetworkImage(item['image']), width: 50, height: 50,),
          //     ],
          //   ),
          //   subtitle: Row(
          //     children: [
          //       Text('Email : '),
          //       Text(item['title']),
          //     ],
          //   ),
          // );
          return SingleChildScrollView(
            child: Container(
            
              color: Colors.red, 
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Image.network(item['images'][0]),
                  Text(item['title']),
                ],
              ),
              ),
          );
        }).toList()
      )
    );
  }
}