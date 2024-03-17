import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  List<String> headings = [
    "Help the Community",
    "Help the Community",
    "Help the Community"
  ];
  List<String> descriptions = [
    "By reporting any issues",
    "By donating for good causes",
    "With Us."
  ];

  List<String> files = ["assets/ob1.png", "assets/ob2.png", "assets/ob3.png"];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double fem = 1.0;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 400 * fem,
              height: 170 * fem,
            ),
            Center(
              child: SizedBox(
                width: 400 * fem,
                height: 400 * fem,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: headings.length,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    return Center(
                      child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          files[index],
                          height: 265,
                          width: 413,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 5),
            Container(
              padding:
                  EdgeInsets.fromLTRB(40 * fem, 10 * fem, 40 * fem, 40 * fem),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          headings[_currentPage],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: 27.59,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(30, 35, 44, 1),
                              letterSpacing: -0.01,
                            ),
                          ),
                        ),
                        SizedBox(height: 10 * fem),
                        Text(
                          descriptions[_currentPage],
                          textAlign: TextAlign.center,
                          style: GoogleFonts.urbanist(
                            textStyle: TextStyle(
                              fontSize: 14.78,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(117, 117, 117, 1),
                              letterSpacing: 0.01,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 26.07 * fem),
                  _buildPageIndicator(),
                  SizedBox(height: 16.0),
                  TextButton(
                    onPressed: () {
                      if (_currentPage == headings.length - 1) {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(builder: (context) => Signup()),
                        // );
                      } else {
                        _pageController.nextPage(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: double.infinity,
                      height: 55.52 * fem,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(13, 146, 118, 1),
                        borderRadius: BorderRadius.circular(7.28),
                      ),
                      child: Center(
                        child: Text(
                          _currentPage == headings.length - 1
                              ? 'Get Started'
                              : 'Next',
                          textAlign: TextAlign.center,
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
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPageIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(headings.length, (index) {
        return Container(
          width: 10,
          height: 10,
          margin: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index
                ? Color.fromRGBO(13, 146, 118, 1)
                : Colors.grey,
          ),
        );
      }),
    );
  }
}
