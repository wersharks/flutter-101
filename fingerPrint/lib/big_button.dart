import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_provider/theme_provider.dart';

class BigButton extends StatelessWidget {
  const BigButton({
    Key ?key,
    required this.width,
    required this.color,
    required this.text,
    required this.textColor,
    required this.onPressed,
  }) : super(key: key);

  final double width;
  final Color color;
  final String text;
  final Color textColor;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width*0.8,
      child: DecoratedBox(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            gradient: const LinearGradient(
              colors: [
                Color(0xFF476BB5),
                Color(0xFF73BCF8),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            )
        ),
        child: TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            elevation: 5,
            shadowColor: Colors.black87,
            backgroundColor: color,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32)
            ),
            padding: const EdgeInsets.symmetric(vertical: 15),
          ),
          child: Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: textColor,
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                )
            ),
          ),
        ),
      ),
    );
  }
}