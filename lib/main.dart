import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sneaker_shop/shared/cubit/bloc_observer.dart';
import 'package:sneaker_shop/shared/cubit/cubit.dart';
import 'modules/1.intro_page.dart';

void main() {
  runApp(const MyApp());
  Bloc.observer = MyBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        providers: [BlocProvider(create: (context) => AppCubit())],
        child: MaterialApp(
          theme: ThemeData(scaffoldBackgroundColor: Colors.white),
          debugShowCheckedModeBanner: false,
          home: const IntroPage(),
        ),
      ),
    );
  }
}
