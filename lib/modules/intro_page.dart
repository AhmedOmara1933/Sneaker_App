import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/layout/home_layout.dart';
import '../shared/components/default_bottom.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // logo
          const Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 30.0),
            child: Image(
              height: 300,
                image: AssetImage('images/nike.png')),
          ),
          // title
          Text(
            'Every  Steps  with \n Comfort',
            style:
                GoogleFonts.acme(fontSize: 45.0, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          // sub title
          Padding(
            padding: const EdgeInsets.only(top:20.0 ),
            child: Text(              'Elevate Your Performance with Cutting-\n'
              'Edge Nike Footwear',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                  color: Colors.black.withOpacity(0.6)),
            ),
          ),
          // start new button
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 60.0,horizontal: 20.0),
                  child: DefaultBottom(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>  HomeLayout(),
                          ),
                      );
                    },
                    text: 'shop now',
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
