import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/models/data_model/data_model.dart';
import 'package:sneaker_shop/shared/components/default_appbar.dart';
import 'package:sneaker_shop/shared/cubit/cubit.dart';
import 'package:sneaker_shop/shared/cubit/states.dart';
import '../shared/components/defaultArrival_card.dart';
import '../shared/components/default_search.dart';
import '../shared/components/defaultPopular_card.dart';

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
    return BlocConsumer<AppCubit, AppStates>(
  listener: (context, state) {
    // TODO: implement listener
  },
  builder: (context, state) {
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
              padding: const EdgeInsets.only(bottom: 15.0, top: 35.0),
              child: Text('Most Popular',
                  style: GoogleFonts.acme(
                      letterSpacing: 1.0,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600)),
            ),
            // most popular
            SizedBox(
              height: 210.0,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DefaultPopularCard(
                        onTap: () {
                          AppCubit.get(context).addToMyCart();
                        },
                        mostPopular: dataModel!.data!.mostPopular![index],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                  itemCount: dataModel!.data!.mostPopular!.length),
            ),
            // text
            Padding(
              padding: const EdgeInsets.only(bottom: 15.0, top: 35.0),
              child: Text('New Arrivals',
                  style: GoogleFonts.acme(
                      fontSize: 25.0,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w600)),
            ),
            // new arrival
            SizedBox(
              height: 180.0,
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => DefaultArrivalCard(
                        onTap: () {},
                        newArrivals: dataModel!.data!.newArrivals![index],
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        width: 20.0,
                      ),
                  itemCount: dataModel!.data!.newArrivals!.length),
            ),
          ],
        ),
      ),
    );
  },
);
  }
}
