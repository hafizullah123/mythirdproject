import 'package:flutter/material.dart';

// Entry point of the app
void main() {
  runApp(const MyApp());
}

// Main app widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Flutter hafiz Home Page'),
    );
  }
}

// Home page widget
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App bar with title and notification icon
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Row(
          children: [
            Text(title), // Title text
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.notifications), // Notification icon
              onPressed: () {
                print('Notification icon pressed'); // Print statement
              },
            ),
          ],
        ),
      ),
      // Drawer with DrawerHeader
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                print('Drawer Home tapped');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                print('Drawer Profile tapped');
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                print('Drawer Settings tapped');
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // Main body with background image and content
      body: Stack(
        children: [
          // Background image (local asset)
          Positioned.fill(
            child: Image.asset("assets/images/image1.jpg", fit: BoxFit.cover),
          ),
          // Centered container with content
          Center(
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Welcome text
                  const Text(
                    'Welcome to your home page!',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16), // Space between widgets
                  // Row with two colored containers
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.blue,
                        child: const Center(child: Text('A')),
                      ),
                      const SizedBox(width: 16), // Space between containers
                      Container(
                        width: 50,
                        height: 50,
                        color: Colors.green,
                        child: const Center(child: Text('B')),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16), // Space between widgets
                  // Full width orange container
                  Container(
                    width: double.infinity,
                    height: 40,
                    color: Colors.orange,
                    child: const Center(child: Text('Full Width Container')),
                  ),
                  const SizedBox(height: 16), // Space between widgets
                  // Wrap widget with multiple Text widgets
                  Wrap(
                    spacing: 8.0, // Horizontal space between children
                    runSpacing: 4.0, // Vertical space between lines
                    children: const [
                      Text('Flutter'),
                      Text('Container'),
                      Text('Column'),
                      Text('Row'),
                      Text('SizedBox'),
                      Text('ListTile'),
                      Text('Wrap'),
                      Text('Text'),
                    ],
                  ),
                  const SizedBox(height: 16), // Space between widgets
                  // ListTile with leading icon and title
                  ListTile(
                    leading: const Icon(Icons.person), // Leading icon
                    title: const Text('Profile'), // Title text
                    subtitle: const Text('Go to your profile'), // Subtitle text
                    trailing: const Icon(Icons.arrow_forward), // Trailing icon
                    onTap: () {
                      print('Profile ListTile tapped'); // Print statement
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      // Navigation bar at the bottom of the screen
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: 0, // Default selected index
        onTap: (index) {
          print('Navigation bar item $index tapped'); // Print statement
        },
      ),
      // Floating action button with icon
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton presse'); // Print statement
        },
        child: const Icon(Icons.add), // Plus icon
        tooltip: 'drop',
      ),
    );
  }
}
