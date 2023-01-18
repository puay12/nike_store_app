import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'package:nike_store_app/modules/home.dart';
import 'package:nike_store_app/modules/register.dart';
import 'package:nike_store_app/widgets/button/back_button.dart';
import '../widgets/button/blue_text_button.dart';
import '../widgets/button/custom_icon_button.dart';
import '../widgets/page_heading.dart';
import '../widgets/ordinary_text_field.dart';

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
              BackButtonCircle(),
              SizedBox(height: 12),
              // Title & subtitle
              PageHeading(
                  title: 'Hello Again!',
                  subtitle: 'Fill Your Details or Continue with Social Media'),
              SizedBox(height: 24),
              // Form
              Container(
                child: Column(
                  children: [
                    OrdinaryTextField(
                      fieldController: emailController,
                      label: 'Email Address',
                      hint: 'xyz@gmail.com',
                      inputType: 'email',
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
                                fontSize: 16),
                          ),
                          SizedBox(height: 12),
                          SizedBox(
                            height: 48,
                            child: TextField(
                              obscureText: _isObscure,
                              controller: passwordController,
                              keyboardType: TextInputType.text,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                    icon: Icon(_isObscure
                                        ? Icons.visibility
                                        : Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  ),
                                  contentPadding: EdgeInsets.all(20),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(
                                          semiHighBorderRadius),
                                      borderSide: BorderSide(color: lightGray)),
                                  hintText: '8-12 karakter',
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
                                  fontSize: 14),
                            ),
                          ),
                        ]),
                    SizedBox(height: 10),
                    GestureDetector(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment(1, 0),
                        child: Text(
                          'Recovery Password',
                          style: TextStyle(
                              color: lightGray,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: regular),
                        ),
                      ),
                    ),
                    SizedBox(height: 16),
                    BlueTextButton(nextPage: Home(), labelText: 'Sign In'),
                    SizedBox(height: 16),
                    CustomIconButton(
                      nextPage: Home(), 
                      labelText: 'Sign In With Google', 
                      iconAsset: 'assets/icons/google.svg', 
                      buttonColor: darkWhite, 
                      labelColor: defaultBlack
                    )
                  ],
                ),
              ),
              // Create Account
              SizedBox(height: 72),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New User?',
                    style: TextStyle(
                        color: defaultGray, fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                    child: Text(
                      'Create Account',
                      style: TextStyle(
                          color: defaultBlack,
                          fontSize: 16,
                          fontWeight: medium),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}