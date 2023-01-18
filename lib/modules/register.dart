import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';
import '../widgets/button/back_button.dart';
import '../widgets/button/blue_text_button.dart';
import '../widgets/button/custom_icon_button.dart';
import '../widgets/ordinary_text_field.dart';
import '../widgets/page_heading.dart';
import 'home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController nameController = TextEditingController();
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
                  title: 'Register Account',
                  subtitle: 'Fill Your Details or Continue with Social Media'),
              SizedBox(height: 24),
              // Form
              Container(
                child: Column(
                  children: [
                    OrdinaryTextField(
                      fieldController: nameController,
                      label: 'Your Name',
                      hint: 'xxxxx',
                      inputType: 'text',
                    ),
                    SizedBox(height: 12),
                    OrdinaryTextField(
                      fieldController: emailController,
                      label: 'Email Address',
                      hint: 'xyz@gmail.com',
                      inputType: 'email',
                    ),
                    SizedBox(height: 12),
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
                    SizedBox(height: 16),
                    BlueTextButton(nextPage: Home(), labelText: 'Sign Up'),
                    SizedBox(height: 16),
                    CustomIconButton(
                        nextPage: Home(),
                        labelText: 'Sign Up With Google',
                        iconAsset: 'assets/icons/google.svg',
                        buttonColor: darkWhite,
                        labelColor: defaultBlack)
                  ],
                ),
              ),
              // Create Account
              SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already Have Account?',
                    style: TextStyle(
                        color: defaultGray, fontSize: 16, fontWeight: medium),
                  ),
                  SizedBox(width: 5),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Log In',
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
