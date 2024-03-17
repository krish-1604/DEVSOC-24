import 'package:flutter/material.dart';
import 'package:empowerall/screens/welcome.dart';
import 'package:empowerall/signin/signup.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _securePassword = true;
  String _email = '';
  String _password = '';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  FocusNode _emailFocusNode = FocusNode();
  FocusNode _passwordFocusNode = FocusNode();

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
                  width: 24,
                ),
                Text(
                  "Log In",
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
                      color: Color.fromRGBO(13, 146, 118, 1),
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
                  suffixIcon: TogglePassword(),
                ),
                style: TextStyle(color: Colors.black),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Password';
                  } else {}
                  return null;
                },
                onSaved: (value) {
                  _password = value ?? '';
                },
              ),
            ),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(
                      color: Color.fromRGBO(106, 112, 124, 1),
                      fontWeight: FontWeight.w500,
                      fontSize: 13.79,
                    ),
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
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
                      if (_formKey.currentState!.validate()) {
                        // Perform login action
                      } else {
                        // Handle validation errors
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
                      'Log In',
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
              height: 240,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account?",
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
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Text(
                        "Register Now",
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

  Widget TogglePassword() {
    return IconButton(
      onPressed: () {
        setState(() {
          _securePassword = !_securePassword;
        });
      },
      icon:
          _securePassword ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
      color: Color(0xFF5A5A5A),
    );
  }
}
