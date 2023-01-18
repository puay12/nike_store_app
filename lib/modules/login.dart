import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store_app/constants/theme.dart';

class Login extends StatefulWidget {
  Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              // back button
              Align(
                alignment: Alignment(-1,0),
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: darkWhite,
                      shape: BoxShape.circle
                    ),
                    child: SvgPicture.asset('assets/icons/back.svg'),
                  ),
                ),
              ),
              SizedBox(height: 12),
              // Title & subtitle
              Center(
                child: Container(
                  width: 268,
                  child: Column(
                    children: [
                      Center(
                        child: Text(
                          'Hello Again!',
                          style: TextStyle(
                            fontWeight: bold,
                            fontSize: 32,
                            color: defaultBlack
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                      Center(
                        child: Text(
                          'Fill Your Details or Continue with Social Media',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: regular,
                            fontSize: 16,
                            color: lightGray,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
              // Form
              Container(
                child: Column(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Email Address',
                          style: TextStyle(
                            color: defaultBlack,
                            fontWeight: medium,
                            fontSize: 16
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 48,
                          child: TextField(
                            controller: emailController,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(semiHighBorderRadius),
                                borderSide: BorderSide(color: lightGray)
                              ),
                              hintText: 'xyz@gmail.com',
                              hintStyle: TextStyle(
                                color: defaultGray,
                                fontFamily: 'Poppins',
                                fontWeight: medium,
                                fontSize: 14),
                              fillColor: lightGray,
                              focusColor: defaultBlue),
                              style: TextStyle(
                                color: defaultBlack,
                                fontFamily: 'Poppins',
                                fontWeight: medium,
                                fontSize: 14
                            ),
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 24),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Password',
                          style: TextStyle(
                            color: defaultBlack,
                            fontWeight: medium,
                            fontSize: 16
                          ),
                        ),
                        SizedBox(height: 12),
                        SizedBox(
                          height: 48,
                          child: TextField(
                            obscureText: _isObscure,
                            controller: passwordController,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isObscure ? Icons.visibility : Icons.visibility_off
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              contentPadding: EdgeInsets.all(20),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(semiHighBorderRadius),
                                borderSide: BorderSide(color: lightGray)
                              ),
                              hintText: 'gabungan angka dan huruf 8-12 karakter',
                              hintStyle: TextStyle(
                                color: defaultGray,
                                fontFamily: 'Poppins',
                                fontWeight: medium,
                                fontSize: 14),
                              fillColor: lightGray,
                              focusColor: defaultBlue),
                              style: TextStyle(
                                color: defaultBlack,
                                fontFamily: 'Poppins',
                                fontWeight: medium,
                                fontSize: 14
                            ),
                          ),
                        ),
                      ]
                    ),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment(1,0),
                        child: Text(
                          'Recovery Password',
                          style: TextStyle(
                            color: lightGray,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: regular
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    // ElevatedButton(
                    //   onPressed: () {}, 
                    //   label
                    // ),
                  ],
                ),
              )
              // Create Account
            ],
          ),
        ),
      ),
    );
  }
}
