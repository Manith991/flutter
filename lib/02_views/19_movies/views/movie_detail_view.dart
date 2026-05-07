import 'package:dynamic_tabbar/dynamic_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:my_flutter_codes/02_views/constant_root.dart';

class MovieDetailView extends StatelessWidget {
  const MovieDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
        backgroundColor: kMovieBackgroundColor,
        foregroundColor: Colors.white,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.bookmark),
          ),
        ],
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                "assets/images/image1.png",
                fit: BoxFit.cover,
                width: size.width,
              ),
              Positioned(
                bottom: 10,
                right: 20,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.withValues(alpha: 0.8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star_border, color: Colors.orange),
                      SizedBox(width: 4),
                      Text(
                        "4.6",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: -75,
                left: 30,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      "assets/images/image2.png",
                      height: size.height * 0.15,
                    ),
                    SizedBox(width: 20), // spacing between image and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Spiderman No Way",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: size.height * 0.1, width: size.width * 0.05),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.calendar_today_rounded, color: kMovieInactiveColor),
              SizedBox(width: 5),
              Text("2025", style: TextStyle(color: kMovieInactiveColor)),
              SizedBox(width: 10),
              Text("|", style: TextStyle(color: kMovieInactiveColor)),
              SizedBox(width: 10),
              Icon(Icons.calendar_today_rounded, color: kMovieInactiveColor),
              SizedBox(width: 5),
              Text("148 Minutes", style: TextStyle(color: kMovieInactiveColor)),
              SizedBox(width: 10),
              Text("|", style: TextStyle(color: kMovieInactiveColor)),
              SizedBox(width: 10),
              Icon(Icons.calendar_today_rounded, color: kMovieInactiveColor),
              SizedBox(width: 5),
              Text("Action", style: TextStyle(color: kMovieInactiveColor)),
            ],
          ),
          SizedBox(height: 10,),
          Expanded(
            child: DynamicTabBarWidget(
              dividerColor: Colors.transparent,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              dynamicTabs: [
                TabData(
                  index: 0,
                  title: Tab(text: "About Movies"),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22.0,
                      vertical: 15,
                    ),
                    child: Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                    ),
                  ),
                ),
                TabData(
                  index: 0,
                  title: Tab(text: "Reviews"),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22.0,
                      vertical: 15,
                    ),
                    child: Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                    ),
                  ),
                ),
                TabData(
                  index: 0,
                  title: Tab(text: "Cost"),
                  content: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 22.0,
                      vertical: 15,
                    ),
                    child: Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
                    ),
                  ),
                ),
              ],
              onTabControllerUpdated: (TabController) {},
            ),
          ),
        ],
      ),
    );
  }
}
