import 'package:flutter/material.dart';
import '../constants/theme.dart';

class OrdinaryTextField extends StatelessWidget {
  const OrdinaryTextField({
    Key? key,
    required this.fieldController,
    required this.label,
    required this.hint,
    required this.inputType
  }) : super(key: key);

  final TextEditingController fieldController;
  final String label;
  final String hint;
  final String inputType;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(
        '${label}',
        style: TextStyle(color: defaultBlack, fontWeight: medium, fontSize: 16),
      ),
      SizedBox(height: 12),
      SizedBox(
        height: 48,
        child: TextField(
          controller: fieldController,
          keyboardType: (inputType == 'email') ? TextInputType.emailAddress : TextInputType.text,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.all(20),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(semiHighBorderRadius),
                  borderSide: BorderSide(color: lightGray)),
              hintText: '${hint}',
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
    ]);
  }
}