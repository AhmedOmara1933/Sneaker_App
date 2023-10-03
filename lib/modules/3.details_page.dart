import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/data_model/data_model.dart';
import '../shared/components/default_appbar.dart';
import '../shared/components/default_bottom.dart';
import '../shared/components/default_size.dart';
import '../shared/cubit/cubit.dart';
import '../shared/cubit/states.dart';
import '2.home_page.dart';

// ignore: must_be_immutable
class DetailsPage extends StatelessWidget {
  List sizes = ['28', '32', '34', '36', '38'];
  Product product;

  DetailsPage({
    super.key,
    required this.product
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return Scaffold(
          body: Stack(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 30.0, left: 20.0, right: 20.0),
                    child: DefaultAppBar(
                      leading: 'images/back.png',
                      leadingOnTap: () {
                        Navigator.pop(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const HomePage(),
                            ));
                      },
                      title: 'Details',
                    ),
                  ),
                  Image(
                    image: AssetImage('${product.image}'),
                  ),
                ],
              ),
              Positioned(
                top: 340.0,
                left: 0,
                right: 0,
                bottom: 0,
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 20.0, right: 20.0, bottom: 60.0),
                  margin: const EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0),
                    ),
                    color: Colors.grey[200],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '${product.name}',
                                style: GoogleFonts.acme(
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 5.0, horizontal: 15.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20.0),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                    ),
                                    const SizedBox(
                                      width: 5.0,
                                    ),
                                    Text(
                                      '4.8',
                                      style: GoogleFonts.acme(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.orangeAccent,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 30.0, bottom: 40.0),
                            child: Text(
                              'Loream ipsum dolor sit amet consecrate.Dais\n'
                              'portion purus qualm dais molester non rises\n'
                              'purus deque. ipsum lacks id....',
                              style: TextStyle(
                                  color: Colors.black54, fontSize: 16.0),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15.0),
                            child: Text('Size',
                                style: GoogleFonts.acme(
                                    letterSpacing: 1.0,
                                    fontSize: 30.0,
                                    fontWeight: FontWeight.w600)),
                          ),
                          SizedBox(
                            height: 50.0,
                            child: ListView.separated(
                                scrollDirection: Axis.horizontal,
                                itemBuilder: (context, index) => DefaultSize(
                                      text: sizes[index],
                                    ),
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      width: 20.0,
                                    ),
                                itemCount: sizes.length),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Price',
                                style: GoogleFonts.acme(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 19.0,
                                    letterSpacing: 1.0),
                              ),
                              Row(
                                children: [
                                  const Image(
                                    image: AssetImage('images/dollar-sign.png'),
                                    height: 25.0,
                                  ),
                                  Text('}',
                                      style: const TextStyle(
                                          letterSpacing: 1.0,
                                          fontSize: 30.0,
                                          fontWeight: FontWeight.w900)),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 25.0,
                          ),
                          Expanded(
                            child: DefaultBottom(
                              text: 'add to cart',
                              onTap: () {},
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
