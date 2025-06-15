import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(242, 250, 255, 1),
      appBar: AppBar(
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Icon(
                    Icons.menu,
                  color: Colors.grey.shade800,
                ),
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
        title: Transform.translate(
          offset: Offset(-12, 0),
          child: Text(
              'Vibe Hear',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[800],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
        backgroundColor: Colors.blue[50],
        child: Column(
          children: [
            // logo
            DrawerHeader(
                child: Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: Image.asset('lib/images/logo_vibe_hear.png'),
                )
            ),

            // other pages
            Padding(
              padding: const EdgeInsets.only(left: 8.0, top: 8),
              child: ListTile(
                leading: Icon(Icons.home),
                title: Text('Home'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(Icons.person_2),
                title: Text('Profile'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(Icons.headset_mic),
                title: Text('Support'),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ListTile(
                leading: Icon(Icons.info),
                title: Text('About'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
