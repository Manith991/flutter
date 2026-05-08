import 'package:flutter/material.dart';
import 'package:my_flutter_codes/02_views/19_movies/views/home_movie_view.dart';
import 'package:my_flutter_codes/02_views/19_movies/views/movie_detail_view.dart';
import 'package:my_flutter_codes/02_views/19_movies/views/watch_list_view.dart';


import '../../constant_root.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    var lstScreens = [
      HomeMovieView(),
      MovieDetailView(),
      WatchListView(),
    ];
    return Scaffold(
      body: lstScreens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){setState(() {
          currentIndex = index;
        });},
        backgroundColor: kMovieBackgroundColor,
        selectedItemColor: kMovieActiveColor,
        unselectedItemColor: kMovieInactiveColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bookmark_border), label: "Save"),
        ],
      ),
    );
  }
}
