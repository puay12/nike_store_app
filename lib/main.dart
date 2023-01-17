import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nike_store_app/bloc/chart/chart_bloc.dart';
import 'package:nike_store_app/bloc/color/fav_color_cubit.dart';
import 'package:nike_store_app/bloc/favorite_color_bloc.dart';
import 'package:nike_store_app/bloc/navigation/nav_cubit.dart';
import 'package:nike_store_app/constants/theme.dart';
import 'modules/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<NavigationCubit>(
      create: (context) => NavigationCubit(),
      child: BlocProvider<FavColorCubit>(
        create: (context) => FavColorCubit(),
        child: MaterialApp(
            theme: ThemeData(
              fontFamily: 'Raleway',
            ),
            debugShowCheckedModeBanner: false,
            home: AnimatedSplashScreen(
                splash: 'assets/images/nike_logo.png',
                duration: 1000,
                splashTransition: SplashTransition.slideTransition,
                backgroundColor: defaultBlue,
                nextScreen: HomePage())),
      ),
    );
  }
}
