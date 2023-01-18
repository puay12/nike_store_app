import 'package:flutter/material.dart';
import '../../constants/theme.dart';

class BlueTextButton extends StatelessWidget {
  const BlueTextButton({
    Key? key,
    required this.nextPage,
    required this.labelText
  }) : super(key: key);

  final Widget nextPage;
  final String labelText;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: defaultBlue,
          padding: EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(semiHighBorderRadius)),
        ),
        child: Container(
          child: Center(
            child: Text(
              'Submit',
              style: TextStyle(
                  color: defaultWhite, fontWeight: semiBold, fontSize: 14),
            ),
          ),
        ));
  }
}