import 'package:flutter/material.dart';

class GridViewIG extends StatefulWidget {
  const GridViewIG({super.key});

  @override
  State<GridViewIG> createState() => _GridViewIGState();
}

class _GridViewIGState extends State<GridViewIG> {
  var listMovies = [
    'https://www.bokksu.com/cdn/shop/articles/movie12.jpg?v=1718179505',
    'https://cms.animecollective.com/wp-content/uploads/2023/04/must-watch-anime-19_movies-2023.jpeg',
    'https://fandomwire.com/wp-content/uploads/2021/05/11-4.jpg',
    'https://d.newsweek.com/en/full/1202650/0-princess-monoke-1600x900-c-default-copy.webp',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_p3TYb6SXMO2Yad_JrlmQiLahgV5_n2JuFQ&s',
    'https://www.chestnuthilllocal.com/uploads/original/20240403-211625-totoro.jpeg',
    'https://preview.redd.it/should-i-watch-the-movie-before-starting-the-anime-v0-1rg2ow75j1fc1.jpeg?auto=webp&s=d5125b71f818f72059b151aef2d4b3e9c3858f7f',
    'https://21_http.duniagames.co.id/21_http/content/upload/file/13517222171664771318.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;
    return Scaffold(
      appBar: AppBar(title: Text("GridView"), centerTitle: true),
      body: GridView(
        //*********** if we input 2 it show 2 columns , if 3 it show 3 columns ***********//
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isPortrait ? 2 : 4,
        ),
        children: listMovies
            .map((movie) => Image.network(movie, fit: BoxFit.cover))
            .toList(),
      ),
    );
  }
}
