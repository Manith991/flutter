import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with SingleTickerProviderStateMixin {

  late TabController controller;
  @override
  void initState()
  {
    controller = TabController(vsync: this,length: 7);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose(); // ✅ Dispose the controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home View"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(accountName: Text("Sok Dara"), accountEmail: Text("Dara@gmail.com"),currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage("https://img.freepik.com/free-vector/smiling-young-man-illustration_1308-174669.jpg?semt=ais_hybrid&w=740"),
            ),),
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Notifications"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            ExpansionTile(title: Text("Settings"),leading: Icon(Icons.settings),trailing: Icon(Icons.arrow_downward),
            children: [
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text("Profile"),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ],),
            Spacer(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text("Logout"),
              trailing: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},
      child: Icon(Icons.ads_click),),

      //********** UX bottomNavigationBar
      // bottomNavigationBar: BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
      //   BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
      //   BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
      //   BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
      //   BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Settings"),
      // ]),

      //*********** scrollable bottomNavigationBar
      bottomNavigationBar: TabBar(
        controller: controller,
        isScrollable: true,
        tabs: const [
          Tab(
            icon: Icon(Icons.seven_k),
            text: "Home",
          ),
          Tab(
            icon: Icon(Icons.wallet_giftcard),
          ),
          Tab(
            icon: Icon(Icons.ten_k),
          ),
          Tab(
            icon: Icon(Icons.clear),
          ),
          Tab(
            icon: Icon(Icons.phone),
          ),
          Tab(
            icon: Icon(Icons.message),
          ),
          Tab(
            icon: Icon(Icons.account_box),
          ),
          Tab(
            icon: Icon(Icons.exit_to_app),
          ),
          Tab(
            icon: Icon(Icons.percent),
          ),
          Tab(
            icon: Icon(Icons.beach_access),
          ),
          Tab(
            icon: Icon(Icons.watch),
            text: "Home",
          ),
        ],
      ),
    );
  }
}
