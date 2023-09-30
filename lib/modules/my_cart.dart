import 'package:flutter/material.dart';
import 'package:sneaker_shop/layout/home_layout.dart';
import 'package:sneaker_shop/shared/components/default_appbar.dart';

class MyCart extends StatelessWidget {
  const MyCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
         Padding(
           padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
           child: DefaultAppBar(
             leading: 'images/back.png',
               leadingOnTap: (){
                 Navigator.pop(
                   context,
                   MaterialPageRoute(
                       builder: (context) =>const HomeLayout()
                   )
                 );
               },
               title: 'My Cart',
           ),
         ),

        ],
      ),
    );
  }
}
