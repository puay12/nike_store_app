import 'package:flutter/material.dart';
import '../constants/theme.dart';

class PageHeading extends StatelessWidget {
  const PageHeading({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 268,
        child: Column(
          children: [
            Center(
              child: Text(
                '${title}',
                style: TextStyle(
                    fontWeight: bold, fontSize: 32, color: defaultBlack),
              ),
            ),
            SizedBox(height: 8),
            Center(
              child: Text(
                '${subtitle}',
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
    );
  }
}