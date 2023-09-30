import 'package:flutter/material.dart';

class DefaultSize extends StatelessWidget {
  final String text;
  const DefaultSize({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: 50.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold
              ),
              textAlign: TextAlign.center
            ),
          ],
        ),
      ),
    );
  }
}
