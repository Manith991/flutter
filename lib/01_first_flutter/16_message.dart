import 'package:flutter/material.dart';

class MessageLayout extends StatefulWidget {
  const MessageLayout({super.key});

  @override
  State<MessageLayout> createState() => _MessageLayoutState();
}

class _MessageLayoutState extends State<MessageLayout> {
  var profileUrl =
      "https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740";

  var listStories = [
    {
      "username": "J.Michael",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR3wvjB-5dIHlbDR2NHYGG_R5QiEXXzI35nA&s",
    },
    {
      "username": "Peter Parker",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8TF9WPeto_95ueHBalGpfsvs02rKt_D58rakptYxqxTeXzsxHDp9Vs2W968NYM8-Ubmk&usqp=CAU",
    },
    {
      "username": "Taylor Swift",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTx7qFGqCaKe5qOQu2FUS9uFvjuHXgRo1hfjg&s",
    },
    {
      "username": "Elon Musk",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRw8UfxvpY3ZNV_TTYb0pFMpb05L45B2XnLKA&s",
    },
    {
      "username": "C.Ronaldo",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2a5lCiNewy483bmtd7cJU1Vynv_h6hyfNGA&s",
    },
    {
      "username": "Brendan Eich",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzmJbhXRpFH8cU18TjkCZV-_2fAkn2iO2Kvg&s",
    },
  ];

  var listChats = [
    {
      "username": "Jordan WalkE",
      "profileUrl":
          "https://images.crunchbase.com/image/upload/c_thumb,h_256,w_256,f_auto,g_face,z_0.7,q_auto:eco,dpr_1/b3tx4jhvxuuwocj295vs",
      "advice":
          "Focus on simplicity and composability. React’s success lies in breaking UI into reusable components.",
    },
    {
      "username": "Guido van Rossum",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGXM-0SLIDjwsolgM6dfa7qAypvx_i-u3eYg&s",
      "advice":
          "Balance readability with flexibility. Code should be intuitive for others to understand.",
    },
    {
      "username": "Anders Hejlsberg",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW4Xqw_fCI9vzOM05YxBYhWH60VULyhSHkyA&s",
      "advice":
          "Don’t let others’ limitations define yours. Innovation often begins where others stop trying.",
    },
    {
      "username": "- Linus Torvalds",
      "profileUrl": "https://avatars.githubusercontent.com/u/1024025?v=4",
      "advice":
          "Execution matters more than ideas. Let your work speak louder than your words.",
    },
    {
      "username": "James Gosling",
      "profileUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/James_Gosling_2008.jpg/1200px-James_Gosling_2008.jpg",
      "advice":
          "Build tools that empower developers without overwhelming them. Safety and simplicity can coexist with power.",
    },
    {
      "username": "Mark Zuckerberg",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXuUkAUxXoSRaNZ54pxJO36pSjruenY5yoyg&s",
      "advice":
          "In a fast-changing world, playing it safe is the riskiest move. Bold decisions drive innovation.",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Shop"), centerTitle: true),
      // body: ListView(
      //   scrollDirection: Axis.horizontal,
      //   children: [
      //     Container(
      //       color: Colors.green,
      //       width: 300,
      //       height: 300,
      //       child: Center(child: Text("Container 1")),
      //     ),
      //     Container(
      //       color: Colors.red,
      //       width: 200,
      //       height: 300,
      //       child: Center(child: Text("Container 1")),
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 200,
      //       height: 300,
      //       child: Center(child: Text("Container 1")),
      //     ),
      //   ],
      // ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              SizedBox(height: 20),
              _buildCustomAppBar(),
              SizedBox(height: 20),
              SizedBox(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 0.0),
                    filled: true,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: listStories
                      .map(
                        (story) => Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Column(
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage: NetworkImage(
                                  story['profileUrl']!,
                                ),
                              ),
                              Text(story['username']!),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),

              Expanded(
                flex: 7,
                child: ListView(
                  children: listChats
                      .map(
                        (chat) => ListTile(
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(chat['profileUrl']!),
                          ),
                          title: Text(chat['username']!),
                          subtitle: Text(chat['advice']!),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Person"),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: "Stories",
          ),
        ],
      ),
    );
  }

  //******* Custom appBar
  _buildCustomAppBar() {
    return Row(
      children: [
        Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(profileUrl)),
            SizedBox(width: 10),
            Text(
              "Chats",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
        Spacer(),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                // borderRadius: BorderRadius.circular(20),
                shape: BoxShape.circle,
              ),
              // child: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.camera_alt),
              //   padding: EdgeInsets.zero,
              // ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.camera_alt, size: 20),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                // borderRadius: BorderRadius.circular(20),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.edit, size: 20),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
