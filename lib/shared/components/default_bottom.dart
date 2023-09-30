import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultBottom extends StatelessWidget {
  final VoidCallback onTap;
  final String text;

  const DefaultBottom({
    super.key,
    required this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding:  EdgeInsets.symmetric(vertical: 14.0,),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(20.0)),
        child: Text(
          text,
          style: GoogleFonts.acme(fontSize: 28.0, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
