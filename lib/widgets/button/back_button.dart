import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store_app/constants/theme.dart';

class BackButtonCircle extends StatelessWidget {
  const BackButtonCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment(-1, 0),
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(color: darkWhite, shape: BoxShape.circle),
          child: SvgPicture.asset('assets/icons/back.svg'),
        ),
      ),
    );
  }
}
