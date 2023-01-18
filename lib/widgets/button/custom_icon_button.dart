import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants/theme.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton(
      {Key? key,
      required this.nextPage,
      required this.labelText,
      required this.iconAsset,
      required this.buttonColor,
      required this.labelColor})
      : super(key: key);

  final Widget nextPage;
  final String labelText;
  final String iconAsset;
  final Color buttonColor;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: buttonColor,
        padding: EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(semiHighBorderRadius)),
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        SvgPicture.asset('${iconAsset}'),
        SizedBox(width: 8),
        Text(
          '${labelText}',
          style: TextStyle(
              color: labelColor, fontWeight: semiBold, fontSize: 14),
        ),
      ]),
    );
  }
}