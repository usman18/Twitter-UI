import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:twitter_ui/search_page.dart';
import 'package:twitter_ui/user_feed.dart';

import 'messages_page.dart';
import 'notifications_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData().copyWith(
        primaryColor: Colors.white,
        accentColor: Color(0xff2199DF),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedPageIndex = 0;

  List<Widget> pages = [
    UserFeed(),
    SearchPage(),
    NotificationsPage(),
    MessagesPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: _selectedPageIndex == 0 ? Colors.blue : Colors.blueGrey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search,
              color: _selectedPageIndex == 1 ? Colors.blue : Colors.blueGrey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,
              color: _selectedPageIndex == 2 ? Colors.blue : Colors.blueGrey,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.email,
              color: _selectedPageIndex == 3 ? Colors.blue : Colors.blueGrey,
            ),
            title: Text(''),
          ),
        ],
        currentIndex: _selectedPageIndex,
        onTap: (newSelected) {
          setState(() {
            _selectedPageIndex = newSelected;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(_selectedPageIndex == 3 ? Icons.email : FontAwesomeIcons.feather),
        elevation: 2,
      ),
    );
  }
}
