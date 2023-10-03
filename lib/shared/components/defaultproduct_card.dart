import 'package:flutter/material.dart';

import '../../models/data_model/data_model.dart';
import '../../modules/3.details_page.dart';

class DefaultProductCard extends StatelessWidget {
  final VoidCallback onTap;
  Product product;

  DefaultProductCard(
      {super.key,
      required this.onTap,
        required this.product
     });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailsPage(product: product),
            ));
      },
      child: Container(
        width: 220.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.white,
        ),
        child: Column(
          children: [
            SizedBox(
             height: 200.0,
              child: Image(
                image: AssetImage(
                  '${product.image}',
                ),
              ),
            ),
            Text(
              '${product.name}',
              style: const TextStyle(
                  fontSize: 30.0, fontWeight: FontWeight.w900
              ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Text(
              '\$${product.price}',
              style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w900,
                  color: Colors.deepOrange[800]),
            ),
            Expanded(
              child: Container(
                height: 80.0,
                width: 80.0,
                padding: const EdgeInsets.all(5.0),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.black),
                child: InkWell(
                  onTap: onTap,
                  child: const Icon(
                      Icons.add,
                    size: 40.0,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
