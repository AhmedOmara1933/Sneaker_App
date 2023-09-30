import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneaker_shop/shared/components/default_bottomNavBar.dart';
import 'package:sneaker_shop/shared/cubit/cubit.dart';
import 'package:sneaker_shop/shared/cubit/states.dart';
import '../modules/home_page.dart';
import '../modules/my_cart.dart';
import '../modules/profile_page.dart';
import '../modules/settings.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {


  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        var cubit=AppCubit.get(context);
        return Scaffold(
          bottomNavigationBar: DefaultBottomNavBar(
            onItemSelected: (index) {
             cubit.changeBottomNavBar(index);
            },
            selectedIndex:cubit.selectedIndex,
          ),
          body: cubit.screans[cubit.selectedIndex],
        );
      },
    );
  }
}
