import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_codes/02_views/constant_root.dart';

class Homework extends StatefulWidget {
  const Homework({super.key});

  @override
  State<Homework> createState() => _HomeworkState();
}

class _HomeworkState extends State<Homework> {
  List dataMovies = [];

  Future<void> fetchData() async {
    // const String apiUrl = "";
    // const String apiToken = "";
    final response = await http.get(
      Uri.parse(movieBaseUrl),
      headers: {"Authorization": "Bearer $apiToken"},
    );
    if (response.statusCode == 200) {
      final item = jsonDecode(response.body);
      setState(() {
        dataMovies = item["results"];
      });
    } else {
      print("Error: ${response.statusCode} ${response.reasonPhrase}");
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: dataMovies.length,
        itemBuilder: (context, index) {
          final data = dataMovies[index];
          return ListTile(
            leading: Image.network(
              "https://image.tmdb.org/t/p/w500${data["poster_path"]}",
              width: 100,
              fit: BoxFit.cover,
            ),
            title: Text(data["title"]),
            subtitle: Text("${data["vote_average"]}"),
          );
        },
      ),
    );
  }
}
