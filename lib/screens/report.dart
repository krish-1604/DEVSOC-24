import 'package:empowerall/screens/image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReportPage extends StatefulWidget {
  @override
  _ReportPageState createState() => _ReportPageState();
}

class _ReportPageState extends State<ReportPage> {
  String _selectedCategory = '';
  String _location = '';
  String _city = '';
  String _pincode = '';
  String _issueDescription = '';

  List<String> _categories = [
    'Category 1',
    'Category 2',
    'Category 3',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shadowColor: Colors.black,
        toolbarHeight: 61,
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
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Report an Issue",
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(8, 61, 50, 1),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Choose Category',
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ),
          DropdownButtonFormField(
            value: _selectedCategory.isNotEmpty ? _selectedCategory : null,
            items: _categories.map((category) {
              return DropdownMenuItem(
                value: category,
                child: Text(category),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                _selectedCategory = value.toString();
              });
            },
            decoration: InputDecoration(),
          ),
          SizedBox(height: 16),
          Text(
            'Location',
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                _location = value;
              });
            },
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'City',
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                _city = value;
              });
            },
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Pincode',
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                _pincode = value;
              });
            },
            decoration: InputDecoration(
              border: UnderlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Text(
            'Describe the Issue',
            style: GoogleFonts.urbanist(
              textStyle: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: Colors.green,
              ),
            ),
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                _issueDescription = value;
              });
            },
            maxLines: 8,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16),
          Center(
            child: Container(
              width: 300,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.28),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 6.5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Images()));
                },
                style: ButtonStyle(
                  elevation: MaterialStateProperty.all<double>(0),
                  backgroundColor: MaterialStateProperty.all<Color>(
                    Color.fromRGBO(13, 146, 118, 1),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.28),
                    ),
                  ),
                  overlayColor: MaterialStateProperty.all<Color>(
                    Colors.transparent,
                  ),
                ),
                child: Text(
                  'Next',
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          )
        ],
      ),
    );
  }
}
