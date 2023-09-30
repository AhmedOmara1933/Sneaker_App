import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DefaultAppBar extends StatelessWidget {
  final String ?leading;
  final String title;
  final String ?actions;
  final VoidCallback ?leadingOnTap;
  final VoidCallback ?actionsOnTap;
  //final Color ?color;

    DefaultAppBar(
      {super.key,
       this.leading,
      required this.title,
        this.actions,
        this.leadingOnTap,
        this.actionsOnTap,
        //ليه ميتفعش اخليها كدا const Colors.grey[300]
       // this.color= const Colors.grey[300],
      });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        leading==null?Container():
        GestureDetector(
          onTap:leadingOnTap,
          child: Image(height: 22.0, image: AssetImage(leading!)),
        ),
        Text(
          title,
          style: GoogleFonts.acme(fontSize: 25.0, fontWeight: FontWeight.w600),
        ),
        actions==null? Container(): GestureDetector(
          onTap: actionsOnTap,
          child: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0)),
            child:  Image(
                height: 22.0,
                image: AssetImage(actions!)
            ),
          ),
        ),
      ],
    );
  }
}
