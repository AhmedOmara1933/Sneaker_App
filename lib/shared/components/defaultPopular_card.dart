import 'package:flutter/material.dart';

import '../../models/data_model/data_model.dart';
import '../../modules/details_page.dart';

class DefaultPopularCard extends StatelessWidget {
  final VoidCallback onTap;
  MostPopular mostPopular;

   DefaultPopularCard(
      {super.key,
      required this.onTap,
        required this.mostPopular
     });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(mostPopular: mostPopular),
            ));
      },
      child: Container(
        width: 185.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 150.0,
              child: Image(
                image: AssetImage(
                  '${mostPopular.image}',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${mostPopular.name}',
                        style: const TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '\$${mostPopular.price}',
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w800,
                            color: Colors.deepOrange[800]),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey[300]),
                    child: InkWell(
                      onTap: onTap,
                      child: const Icon(Icons.add),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
