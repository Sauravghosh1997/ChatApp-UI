import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/widgets/category_selector.dart';
import 'package:flutter_chat_ui/widgets/Crushes.dart';
import 'package:flutter_chat_ui/widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(
          'Zyle',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Crushes(),
                  RecentChats(),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar( 
        fixedColor: Colors.blue,
        items: <BottomNavigationBarItem>[ 
        BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.blue,), label: 'Home',),
        BottomNavigationBarItem(icon: Icon(Icons.explore, color: Colors.blue,), label: 'Explore',),
        BottomNavigationBarItem(icon: Icon(Icons.filter_1_outlined, color: Colors.blue,), label: 'Filter',),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle, color: Colors.blue,), label: 'Profile',),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
    )
    );
  }
}
