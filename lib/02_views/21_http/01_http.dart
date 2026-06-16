import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // late List data;
  // void getProduct() async {
  //   final response =
  //   await http.get(Uri.parse("https://fakestoreapi.com/products"));
  //   log("data ${response.body}");
  //   setState(() {
  //     data = jsonDecode(response.body);
  //   });
  Future<List> getProduct() async {
    final response = await http.get(
      Uri.parse("https://fakestoreapi.com/products"),
    );
    log("data ${response.body}");
    final productJson = jsonDecode(response.body);
    return productJson as List;
  }

  @override
  void initState() {
    super.initState();
    getProduct();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(
      //   itemCount: data.length,
      //   itemBuilder: (context, index) {
      //     return Column(
      //       children: [
      //         Image.network(data[index]['image']),
      //         Text(data[index]['title']),
      //
      //       ],
      //     );
      //   },
      // ),
      body: FutureBuilder(
        future: getProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final product = snapshot.data![index];
              return Column(
                children: [
                  Image.network(product['image']),
                  Text(
                    product['title'],
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
