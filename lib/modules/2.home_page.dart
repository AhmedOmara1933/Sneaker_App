import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/shared/components/defaultproduct_card.dart';
import '../models/data_model/data_model.dart';
import '../shared/components/default_appbar.dart';
import '../shared/components/default_search.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DataModel? dataModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dataModel = DataModel.fromJson(data);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //my appbar
            DefaultAppBar(
                leading: 'images/menu.png',
                title: 'Home',
                actions: 'images/notification.png'),
            // search box
            const Padding(
              padding: EdgeInsets.only(top: 40.0),
              child: DefaultSearch(),
            ),
            // text
            Padding(
              padding: const EdgeInsets.only(bottom: 35.0, top: 35.0),
              child: Text(
                  'Most Popular',
                  style: GoogleFonts.acme(
                      letterSpacing: 1.0,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w600)),
            ),
            // most popular
            Expanded(
              child: SizedBox(
                child: ListView.separated(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => DefaultProductCard(
                          product: dataModel!.product![index],
                          onTap: () {},
                        ),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 20.0,
                        ),
                    itemCount: dataModel!.product!.length),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
