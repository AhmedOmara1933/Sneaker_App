import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneaker_shop/shared/cubit/states.dart';
import '../../models/data_model/data_model.dart';
import '../../modules/home_page.dart';
import '../../modules/my_cart.dart';
import '../../modules/profile_page.dart';
import '../../modules/settings.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(InitialState());

  static AppCubit get(context) => BlocProvider.of(context);
  List <MostPopular> myCart=[];
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

  void addToMyCart(){
    myCart.add(MostPopular());
    emit(AppAddToCart());
  }

}
