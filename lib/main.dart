import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Twitter Profile Layout',
      theme: ThemeData.dark(), // Use dark theme
      home: ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      drawer: Drawer(
        backgroundColor: Colors.black,
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Icon(Icons.account_circle, size: 100, color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white),
              title: Text("Home", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.search, color: Colors.white),
              title: Text("Explore", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.notifications, color: Colors.white),
              title: Text("Notifications", style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading: Icon(Icons.message, color: Colors.white),
              title: Text("Messages", style: TextStyle(color: Colors.white)),
            ),
            // Add more items here if needed
          ],
        ),
      ),
      body: Row(
        children: [
          // Left-side menu (Sidebar)
          Expanded(
            flex: 2,
            child: Drawer(
              backgroundColor: Colors.black,
              child: ListView(
                children: <Widget>[
                  DrawerHeader(
                    child: Icon(Icons.account_circle, size: 100, color: Colors.white),
                  ),
                  ListTile(
                    leading: Icon(Icons.home, color: Colors.white),
                    title: Text("Home", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.search, color: Colors.white),
                    title: Text("Explore", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.notifications, color: Colors.white),
                    title: Text("Notifications", style: TextStyle(color: Colors.white)),
                  ),
                  ListTile(
                    leading: Icon(Icons.message, color: Colors.white),
                    title: Text("Messages", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ),
          ),

          // Main content: Profile and posts
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Profile Header Section
                  Stack(
                    children: [
                      Container(
                        height: 151,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://via.placeholder.com/500x150'), // Background image
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 20,
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage('https://via.placeholder.com/150'), // Profile picture
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    "Aman Kumar",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "@amankr0077",
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(height: 20),

                  // Posts Section
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5, // Number of posts (replace with dynamic data)
                    itemBuilder: (context, index) {
                      return Card(
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        child: Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                              ),
                              title: Text('Aman Kumar'),
                              subtitle: Text('A Flutter-based restaurant billing app provides a dynamic UI...'),
                            ),
                            Image.network('https://via.placeholder.com/500x200'), // Post image
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),

          // Right-side panel (Recommendations & News)
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'You might like',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                    ),
                    title: Text("Startup India"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                    ),
                    title: Text("Shahbaz A. Khan"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                    ),
                    title: Text("Startup Canada"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Live on X',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage('https://via.placeholder.com/100'),
                    ),
                    title: Text("Zee News LIVE"),
                    trailing: ElevatedButton(
                      onPressed: () {},
                      child: Text("Watch"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
