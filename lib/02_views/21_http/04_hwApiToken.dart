// import 'dart:developer';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../constant_root.dart';
import 'models/movie_model.dart';

class HWApiToken extends StatefulWidget {
  const HWApiToken({super.key});

  @override
  State<HWApiToken> createState() => _HWApiTokenState();
}

class _HWApiTokenState extends State<HWApiToken> {
  // Future<dynamic> getData() async {
  //   final res = await http.get(
  //     Uri.parse(movieBaseUrl),
  //     headers: {'Authorization': 'Bearer $apiToken'},
  //   );
  //   // log(res.body);
  //   final data = jsonDecode(res.body);
  //   return data;
  // }

  Future<Movie> getData() async {
    final res = await http.get(
      Uri.parse(movieBaseUrl),
      headers: {'Authorization': 'Bearer $apiToken'},
    );
    final data = jsonDecode(res.body);
    return Movie.fromJson(data);
  }

  @override
  void initState() {
    // TODO: implement initState
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff12253f),
        title: Text("The MovieDB", style: TextStyle(color: Colors.white)),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          // return GridView.builder(
          //   itemCount: snapshot.data['results'].length,
          //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //   ),
          //   itemBuilder: (context, index) {
          //     final movie = snapshot.data['results'][index];
          //     return Expanded(
          //       child: Image.network(
          //         "https://image.tmdb.org/t/p/w500/${movie['poster_path']}",
          //         fit: BoxFit.cover,
          //       ),
          //     );
          //   },
          // );
          return GridView.builder(
            itemCount: snapshot.data == null
                ? 0
                : snapshot.data!.results!.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              final movie = snapshot.data!.results![index];
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Image.network(
                        "https://image.tmdb.org/t/p/w500/${movie.posterPath!}",
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
                    Text(movie.title ?? ''),
                    Text(movie.releaseDate ?? ''),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
