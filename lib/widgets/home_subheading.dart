import 'package:flutter/material.dart';
import 'package:nike_store_app/constants/theme.dart';

class HomeSubHeading extends StatelessWidget {
  const HomeSubHeading({
    Key? key,
    required this.subheading
  }) : super(key: key);

  final String subheading;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Flexible(
              flex: 4,
              fit: FlexFit.tight,
              child: Align(
                alignment: Alignment(-1, 0),
                child: Text(
                  '${subheading}',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: semiBold,
                    color: defaultBlack,
                  ),
                ),
              )),
          Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Align(
                alignment: Alignment(0.8, 0),
                child: Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: medium,
                    color: defaultBlue,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
