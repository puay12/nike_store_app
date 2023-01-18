import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';

class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
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
              SizedBox(height: 30),
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
