import 'dart:math';

import 'package:empowerall/screens/report.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final List<Map<String, String>> blogs = [
    {'title': 'Blog Title 1', 'image': 'assets/blog1.png'},
    {'title': 'Blog Title 2', 'image': 'assets/blog1.png'},
    {'title': 'Blog Title 3', 'image': 'assets/blog1.png'},
    {'title': 'Blog Title 4', 'image': 'assets/blog1.png'},
  ];

  final List<Map<String, String>> ngos = [
    {'name': 'NGO Name 1', 'logo': 'assets/ngo_1.png'},
    {'name': 'NGO Name 2', 'logo': 'assets/ngo_1.png'},
    {'name': 'NGO Name 3', 'logo': 'assets/ngo_1.png'},
    {'name': 'NGO Name 4', 'logo': 'assets/ngo_1.png'},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(238, 238, 238, 1),
        elevation: 0,
        shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        toolbarHeight: 61,
        title: Text(
          'Empower All',
          style: GoogleFonts.urbanist(
            textStyle: const TextStyle(
              fontSize: 21.78,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 34,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Service Categories',
              style: GoogleFonts.urbanist(
                textStyle: TextStyle(
                  fontSize: 18.74,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(6, 23, 55, 1),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 143.0,
                height: 64.0,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ReportPage()));
                  },
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: BorderSide(
                      color: Color.fromRGBO(8, 84, 68, 1),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/report.png"),
                        height: 34,
                        width: 34,
                      ),
                      SizedBox(width: 7.0),
                      Text(
                        'Report',
                        style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                            fontSize: 17.56,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(8, 84, 68, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 143.0,
                height: 64.0,
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: BorderSide(
                      color: Color.fromRGBO(8, 84, 68, 1),
                    ),
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                  ),
                  child: Row(
                    children: [
                      Image(
                        image: AssetImage("assets/donate.png"),
                        height: 34,
                        width: 34,
                      ),
                      SizedBox(width: 7.0),
                      Text(
                        'Donate',
                        style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                            fontSize: 17.56,
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(8, 84, 68, 1),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 43.0),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Latest Blogs',
              style: GoogleFonts.urbanist(
                textStyle: TextStyle(
                  fontSize: 18.74,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(6, 23, 55, 1),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 168,
            width: 293,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: blogs.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 293.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(8, 84, 68, 1),
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust the radius as needed
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BlogDetailsPage(blog: blogs[index])),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Healthy Habits for Busy Lives",
                                    style: GoogleFonts.urbanist(
                                      textStyle: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.urbanist(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Simar Bhatia",
                                          style: TextStyle(
                                            fontSize: 8.18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        TextSpan(text: " "),
                                        TextSpan(
                                          text: "HealthCare",
                                          style: TextStyle(
                                            fontSize: 8.18,
                                            color:
                                                Color.fromRGBO(72, 224, 192, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque euismod lorem eget...",
                                    style: GoogleFonts.urbanist(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                    maxLines: 3, // Limit text to 3 lines
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(
                            blogs[index]['image']!,
                            fit: BoxFit.cover,
                            height: 100.0,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 16.0), // Add spacing

          // Top NGOs section
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            child: Text(
              'Top NGOs',
              style: GoogleFonts.urbanist(
                textStyle: TextStyle(
                  fontSize: 18.74,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(6, 23, 55, 1),
                ),
              ),
            ),
          ),

          SizedBox(
            height: 15,
          ),
          SizedBox(
            height: 168,
            width: 293,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: ngos.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    width: 293.0,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(238, 238, 238, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  NgoDetailsPage(ngo: ngos[index])),
                        );
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    ngos[index]['name']!,
                                    style: GoogleFonts.urbanist(
                                      textStyle: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    ),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      style: GoogleFonts.urbanist(
                                        textStyle: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: "Children's Welfare",
                                          style: TextStyle(
                                            fontSize: 8.18,
                                            color: Color.fromRGBO(8, 84, 68, 1),
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque euismod lorem eget...",
                                    style: GoogleFonts.urbanist(
                                      textStyle: TextStyle(
                                        fontSize: 12,
                                        color: Color.fromRGBO(117, 117, 117, 1),
                                      ),
                                    ),
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Image.asset(
                            ngos[index]['logo']!,
                            fit: BoxFit.cover,
                            height: 100.0,
                            alignment: Alignment.centerRight,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.home,
                color: _selectedIndex == 0
                    ? Color.fromRGBO(13, 146, 118, 1)
                    : Color.fromRGBO(117, 117, 117, 1),
              ),
              onPressed: () {
                _onItemTapped(0);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.article,
                color: _selectedIndex == 1
                    ? Color.fromRGBO(13, 146, 118, 1)
                    : Color.fromRGBO(117, 117, 117, 1),
              ),
              onPressed: () {
                _onItemTapped(1);
              },
            ),
            SizedBox(),
            IconButton(
              icon: Icon(
                Icons.handshake,
                color: _selectedIndex == 3
                    ? Color.fromRGBO(13, 146, 118, 1)
                    : Color.fromRGBO(117, 117, 117, 1),
              ),
              onPressed: () {
                _onItemTapped(3);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.account_circle,
                color: _selectedIndex == 4
                    ? Color.fromRGBO(13, 146, 118, 1)
                    : Color.fromRGBO(117, 117, 117, 1),
              ),
              onPressed: () {
                _onItemTapped(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Sample classes for BlogDetailsPage and NgoDetailsPage....
class BlogDetailsPage extends StatelessWidget {
  final Map<String, String> blog;

  const BlogDetailsPage({required this.blog, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(blog['title']!),
      ),
      body: Center(
        child: Text(
          'This is the detailed content of blog: ${blog['title']}',
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}

class NgoDetailsPage extends StatelessWidget {
  final Map<String, String> ngo;

  const NgoDetailsPage({required this.ngo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ngo['name']!),
      ),
      body: Center(
        child: Text(
          'This is the detailed information of NGO: ${ngo['name']}',
          style: const TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
