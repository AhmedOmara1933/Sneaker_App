import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneaker_shop/shared/cubit/states.dart';
import '../../models/data_model/data_model.dart';
import '../../modules/2.home_page.dart';
import '../../modules/4.my_cart.dart';
import '../../modules/5.profile_page.dart';
import '../../modules/6.settings.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  int selectedIndex = 0;
  List<Widget> screans = [
    const HomePage(),
    const MyCart(),
    const ProfilePage(),
    const Settings(),
  ];

  void changeBottomNavBar(index){
    selectedIndex=index;
   emit(AppChangeBottomNavBar());
  }
}