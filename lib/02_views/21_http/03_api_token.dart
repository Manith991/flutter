import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_flutter_codes/02_views/constant_root.dart';

class APIToken extends StatefulWidget {
  const APIToken({super.key});

  @override
  State<APIToken> createState() => _APITokenState();
}

class _APITokenState extends State<APIToken> {
  List movies = [];

  Future<void> fetchData() async {
    // const String baseUrl = "";
    // const String apiToken = "";

    final response = await http.get(
      Uri.parse(movieBaseUrl),
      headers: {
        "Authorization": "Bearer $apiToken",
        "Accept": "application/json",
      },
    );
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        movies = data["results"];
      });
    } else {
      print("Error: ${response.statusCode} ${response.reasonPhrase}");
    }
  }

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Popular Movies")),
      body: movies.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) {
                final movie = movies[index];
                return ListTile(
                  leading: Image.network(
                    "https://image.tmdb.org/t/p/w500${movie["poster_path"]}",
                    width: 100,
                    fit: BoxFit.cover,
                  ),
                  title: Text(movie["title"]),
                  subtitle: Text("Rating: ${movie["vote_average"]}"),
                );
              },
            ),
    );
  }
}
