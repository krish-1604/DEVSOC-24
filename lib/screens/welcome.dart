import 'package:empowerall/signin/login.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              "Welcome to EmpowerAll",
              style: GoogleFonts.urbanist(
                textStyle: TextStyle(
                  fontSize: 27.59,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(30, 35, 44, 1),
                  letterSpacing: -0.01,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 7,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Together, We Can Make a Difference.",
              style: GoogleFonts.urbanist(
                textStyle: TextStyle(
                  fontSize: 14.78,
                  fontWeight: FontWeight.normal,
                  color: Color.fromRGBO(117, 117, 117, 1),
                  letterSpacing: 0.01,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 41,
          ),
          Align(
            alignment: Alignment.center,
            child: Image(
              image: AssetImage("assets/logo_final.png"),
              height: 217,
              width: 217,
            ),
          ),
          SizedBox(
            height: 49,
          ),
          SizedBox(
            width: 317.76,
            height: 55.17,
            child: Container(
              width: 360,
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
                      MaterialPageRoute(builder: (context) => Login()));
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
                  'Get Started',
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 14.78,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
