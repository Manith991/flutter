import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_flutter_codes/02_views/19_movies/views/movie_detail_view.dart';
import 'package:my_flutter_codes/02_views/constant_root.dart';

class HomeMovieView extends StatelessWidget {
  HomeMovieView({super.key});

  final listMovies = List.generate(9, (i) => 'assets/images/image${i + 3}.png');

  TabData _buildTab(
    int index,
    String title,
    BuildContext context,
    bool isPortrait, {
    bool tappable = false,
  }) {
    return TabData(
      index: index,
      title: Tab(text: title),
      content: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: GridView.count(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          crossAxisCount: isPortrait ? 3 : 4,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7,
          children: listMovies
              .map(
                (movie) => GestureDetector(
                  onTap: tappable
                      ? () => Navigator.push(
                          context,
                          MaterialPageRoute(builder: (_) => MovieDetailView()),
                        )
                      : null,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(movie, fit: BoxFit.cover),
                  ),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What do you want to watch?",
                style: GoogleFonts.poppins(fontSize: 22),
              ),
              const SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: "Search...",
                  hintStyle: const TextStyle(color: Colors.grey),
                  filled: true,
                  fillColor: kMovieFillSearchColor,
                  suffixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listMovies
                      .map(
                        (movie) => Padding(
                          padding: const EdgeInsets.only(right: 25.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset(
                              movie,
                              width: 170,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
              const SizedBox(height: 10),
              Expanded(
                child: DynamicTabBarWidget(
                  indicatorColor: Colors.white,
                  dividerColor: Colors.transparent,
                  labelColor: Colors.white,
                  dynamicTabs: [
                    _buildTab(
                      0,
                      "Playing",
                      context,
                      isPortrait,
                      tappable: true,
                    ),
                    _buildTab(1, "Upcoming", context, isPortrait),
                    _buildTab(2, "Top Rated", context, isPortrait),
                    _buildTab(3, "Popular", context, isPortrait),
                  ],
                  onTabControllerUpdated: (_) {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
