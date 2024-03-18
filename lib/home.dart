import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        title: Text(
          'Empower All',
          style: GoogleFonts.urbanist(
            textStyle: TextStyle(
              fontSize: 21.78,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Home Page',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article),
            label: 'Blog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'New Post',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.handshake),
            label: 'NGOs',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color.fromRGBO(13, 146, 118, 1),
        unselectedItemColor: Color.fromRGBO(117, 117, 117, 1),
        onTap: _onItemTapped,
      ),
    );
  }
}
