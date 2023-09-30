import 'package:flutter/material.dart';

class DefaultSearch extends StatelessWidget {
  const DefaultSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(
          color: Colors.black.withOpacity(0.2)
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 25.0
                ),
                child: Image(
                  color: Colors.black.withOpacity(0.6),
                  height: 30.0,
                    image: AssetImage(
                  'images/search.png'
                )
                ),
              ),
              const Text(
                'Search',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0
                ),
              ),
            ],
          ),
          Container(
           height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child:Icon(
              Icons.align_horizontal_left,
              color: Colors.white,
              size: 30.0,
            )
          )

        ],
      ),
    );
  }
}
