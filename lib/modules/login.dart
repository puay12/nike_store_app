import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'package:nike_store_app/modules/home.dart';
import 'package:nike_store_app/widgets/back_button.dart';
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
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Home()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: defaultBlue,
                          padding: EdgeInsets.symmetric(vertical: 16),
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.circular(semiHighBorderRadius)),
                        ),
                        child: Container(
                          child: Center(
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                  color: defaultWhite,
                                  fontWeight: semiBold,
                                  fontSize: 14),
                            ),
                          ),
                        )),
                    SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: darkWhite,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.circular(semiHighBorderRadius)),
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset('assets/icons/google.svg'),
                            SizedBox(width: 8),
                            Text(
                              'Sign In With Google',
                              style: TextStyle(
                                  color: defaultBlack,
                                  fontWeight: semiBold,
                                  fontSize: 14),
                            ),
                          ]),
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
                    onTap: () {},
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
