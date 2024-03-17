import 'package:empowerall/onboarding/ob1.dart';
import 'package:empowerall/signin/login.dart';
import 'package:flutter/material.dart';
import 'package:empowerall/screens/welcome.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _securePassword = true;
  bool _secureConfirmPassword = true;
  String _username = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode _usernameFocusNode = FocusNode();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();
  FocusNode _confirmPasswordFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(
              height: 55,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Welcome()));
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                ),
              ),
            ),
            SizedBox(height: 44),
            Row(
              children: [
                SizedBox(
                  width: 26,
                ),
                Text(
                  "Register",
                  style: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27.59,
                      letterSpacing: -0.01,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 46),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: SizedBox(
                child: TextFormField(
                  focusNode: _usernameFocusNode,
                  decoration: InputDecoration(
                    hintText: 'Username',
                    hintStyle: GoogleFonts.urbanist(
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF5A5A5A),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.28),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7.28),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(221, 221, 221, 1),
                        width: 2.0,
                      ),
                    ),
                    contentPadding: EdgeInsets.all(20.0),
                  ),
                  style: TextStyle(color: Colors.black),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a username';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _username = value ?? '';
                  },
                ),
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                focusNode: _emailFocusNode,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.28),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.28),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(221, 221, 221, 1),
                      width: 2.0,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an email address';
                  }

                  // Use a regular expression to check if the email is in a valid format
                  final emailRegex = RegExp(
                    r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
                  );

                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }

                  return null;
                },
                onSaved: (value) {
                  _email = value ?? '';
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                focusNode: _passwordFocusNode,
                obscureText: _securePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.28),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.28),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(221, 221, 221, 1),
                      width: 2.0,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                  suffixIcon: TogglePassword(
                    onPressed: () {
                      setState(() {
                        _securePassword = !_securePassword;
                      });
                    },
                  ),
                ),
                style: TextStyle(color: Colors.black),
                onChanged: (value) {
                  _password = value; // Update _password on every change
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value ?? '';
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 25.0),
              child: TextFormField(
                focusNode: _confirmPasswordFocusNode,
                obscureText: _secureConfirmPassword,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: GoogleFonts.urbanist(
                    textStyle: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF5A5A5A),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.28),
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(7.28),
                    borderSide: BorderSide(
                      color: Color.fromRGBO(221, 221, 221, 1),
                      width: 2.0,
                    ),
                  ),
                  contentPadding: EdgeInsets.all(20.0),
                  suffixIcon: TogglePassword(
                    onPressed: () {
                      setState(() {
                        _secureConfirmPassword = !_secureConfirmPassword;
                      });
                    },
                  ),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter confirm password';
                  }
                  if (value != _password) {
                    return 'Passwords do not match';
                  }
                  return null;
                },
                onSaved: (value) {
                  _confirmPassword = value ?? '';
                },
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 360,
                  height: 60,
                  margin: EdgeInsets.symmetric(vertical: 20),
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
                      if (_formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Onboarding()),
                        );
                      }
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
                      'Sign Up',
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
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: GoogleFonts.urbanist(
                        textStyle: TextStyle(
                          fontSize: 14.78,
                          fontWeight: FontWeight.normal,
                          color: Color.fromRGBO(106, 112, 124, 1),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Login",
                        style: GoogleFonts.urbanist(
                          textStyle: TextStyle(
                            fontSize: 14.78,
                            fontWeight: FontWeight.w700,
                            color: Color.fromRGBO(13, 146, 118, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TogglePassword extends StatelessWidget {
  final VoidCallback onPressed;

  const TogglePassword({Key? key, required this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(Icons.visibility),
      color: Color(0xFF5A5A5A),
    );
  }
}
