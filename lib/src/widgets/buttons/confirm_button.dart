import 'package:book_library/src/theme/colors.dart';
import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final double height;

  ConfirmButton({
    @required this.text,
    @required this.onPressed,
    this.height = 60.0,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: FlatButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        color: kButtonColor,
        textColor: Colors.white.withOpacity(0.9),
        onPressed: onPressed,
        child: Text(
          'Add Book',
          style: TextStyle(
            fontSize: 18.0,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
