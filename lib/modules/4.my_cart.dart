import 'package:flutter/material.dart';

import '../shared/components/default_appbar.dart';

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
               title: 'My Cart',
           ),
         ),
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) =>Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 20.0
                  ),
                  child: const Row(
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        child: Text(''),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Column(
                        children: [
                          Text(
                            'title',
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                          Text(
                            'price',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                separatorBuilder: (context, index) => const SizedBox(
                  height: 20.0,
                ),
                itemCount: 1
            ),
          )

        ],
      ),
    );
  }
}
