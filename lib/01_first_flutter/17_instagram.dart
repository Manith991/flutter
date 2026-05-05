import 'package:flutter/material.dart';
import 'package:my_flutter_codes/01_first_flutter/17_ig_layout_hw.dart';

class InstagramLayout extends StatefulWidget {
  const InstagramLayout({super.key});

  @override
  State<InstagramLayout> createState() => _InstagramLayoutState();
}

class _InstagramLayoutState extends State<InstagramLayout> {
  var listPosts = [
    {
      "username": "Jordan WalkE",
      "profileUrl":
          "https://images.crunchbase.com/image/upload/c_thumb,h_256,w_256,f_auto,g_face,z_0.7,q_auto:eco,dpr_1/b3tx4jhvxuuwocj295vs",
      "postUrl":
          "https://i.pinimg.com/564x/9e/00/c5/9e00c53e73b9b096a4e0d8bea11fff99.jpg",
      "postTime": "30mn",
    },
    {
      "username": "Guido Rossum",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGXM-0SLIDjwsolgM6dfa7qAypvx_i-u3eYg&s",
      "postUrl":
          "https://images.pexels.com/photos/18161138/pexels-photo-18161138/free-photo-of-istanbul-turkey-waterfront.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "postTime": "1:30mn",
    },
    {
      "username": "A.Hejlsberg",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW4Xqw_fCI9vzOM05YxBYhWH60VULyhSHkyA&s",
      "postUrl":
          "https://images.pexels.com/photos/13979460/pexels-photo-13979460.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500",
      "postTime": "8:20mn",
    },
    {
      "username": "Linus Torvalds",
      "profileUrl": "https://avatars.githubusercontent.com/u/1024025?v=4",
      "postUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0004-DVMFDGZ2IcyIfRBANWQp-ExqgXa3QA&s",
      "postTime": "3:43mn",
    },
    {
      "username": "James Gosling",
      "profileUrl":
          "https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/James_Gosling_2008.jpg/1200px-James_Gosling_2008.jpg",
      "postUrl":
          "https://i.pinimg.com/564x/fc/d4/ed/fcd4ed44a68514d6fbcea2c8d452fad8.jpg",
      "postTime": "5:12mn",
    },
    {
      "username": "Mark Zuckerberg",
      "profileUrl":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXuUkAUxXoSRaNZ54pxJO36pSjruenY5yoyg&s",
      "postUrl":
          "https://i.pinimg.com/564x/e5/eb/78/e5eb78126c65632707f701ee8cdd67e2.jpg",
      "postTime": "2mn",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Instagram",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        fontFamily: 'Cursive',
                        color: Colors.blue,
                      ),
                    ),
                    Icon(Icons.notifications),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 110,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: listPosts.length,
                  itemBuilder: (context, index) {
                    final story = listPosts[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>InstagramProfile(username: story["username"]!,profileUrl: story["profileUrl"]!,postUrl: story["postUrl"]!)));
                            },
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.orange, width: 3),
                              ),
                              child: CircleAvatar(
                                radius: 35,
                                backgroundImage: NetworkImage(story['profileUrl']!),
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          Text(
                            story['username'] ?? '',
                            style: const TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: listPosts.length,
                  itemBuilder: (context, index) {
                    final post = listPosts[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 25.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 33,
                                backgroundColor: Colors.orange,
                                child: CircleAvatar(
                                  radius: 30,
                                  backgroundImage: NetworkImage(
                                    post['profileUrl']!,
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(post['username']!),
                                  Text(
                                    "${post['postTime']} ago",
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_horiz),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.network(
                              post['postUrl']!,
                              height: 300,
                              fit: BoxFit.cover,
                              width: double.infinity,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
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
}
