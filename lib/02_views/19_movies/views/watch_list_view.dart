import 'package:flutter/material.dart';
import 'package:my_flutter_codes/02_views/constant_root.dart';

class WatchListView extends StatelessWidget {
  const WatchListView({super.key});

  @override
  Widget build(BuildContext context) {
    final movies = [
      {
        "title": "Spiderman",
        "rating": "9.5",
        "genre": "Action",
        "year": "2021",
        "duration": "139 minutes",
        "image": "assets/images/image10.png",
      },
      {
        "title": "Spider-Man: No Way Home",
        "rating": "8.5",
        "genre": "Action",
        "year": "2021",
        "duration": "139 minutes",
        "image": "assets/images/image11.png",
      },
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kMovieBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: IconButton(
            icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        title: const Text(
          "Watch List",
          style: TextStyle(color: Colors.white, fontFamily: "Poppins"),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: movies.map((movie) => MovieItem(movie: movie)).toList(),
        ),
      ),
    );
  }
}

class MovieItem extends StatelessWidget {
  final Map<String, String> movie;

  const MovieItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(movie["image"]!, width: 100),
          ),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(movie["title"]!, style: const TextStyle(fontSize: 20)),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Icon(Icons.star_border, color: Colors.orange),
                  const SizedBox(width: 5),
                  Text(
                    movie["rating"]!,
                    style: const TextStyle(color: Colors.orange),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.local_activity_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(movie["genre"]!),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                  const SizedBox(width: 5),
                  Text(movie["year"]!),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.access_time_outlined, color: Colors.white),
                  const SizedBox(width: 5),
                  Text(movie["duration"]!),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
