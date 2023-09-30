import 'package:flutter/material.dart';
import '../../models/data_model/data_model.dart';
import '../../modules/details_page.dart';

// ignore: must_be_immutable
class DefaultArrivalCard extends StatelessWidget {
  final VoidCallback onTap;
  NewArrivals newArrivals;

  DefaultArrivalCard(
      {super.key, required this.onTap, required this.newArrivals});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(
                newArrivals: newArrivals,
              ),
            ));
      },
      child: Container(
        width: 245.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 120.0,
              child: Image(
                image: AssetImage(
                  '${newArrivals.image}',
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
                        '${newArrivals.name}',
                        style: const TextStyle(
                            fontSize: 17.0, fontWeight: FontWeight.w900),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        '\$${newArrivals.price}',
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
