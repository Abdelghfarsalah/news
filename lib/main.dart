import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_day/cubits/cubit/newscubit_cubit.dart';
import 'package:news_day/screens/homeView.dart';
import 'package:news_day/services/getnews.dart';

void main() {
  getnews()..getnewsfunction(category: 'ad');
  runApp(const newsApp());
}

class newsApp extends StatelessWidget {
  const newsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewscubitCubit()..getnewssport(category: 'business'),
      child: MaterialApp(
            debugShowCheckedModeBanner: false,
            darkTheme: ThemeData(
                appBarTheme: const AppBarTheme(
                    color: Colors.black,
                    titleTextStyle:
                        TextStyle(color: Colors.white, fontSize: 20)),
                textTheme: const TextTheme(
                  titleSmall: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                  titleLarge: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w800),
                ),
                scaffoldBackgroundColor: Colors.black),
            theme: ThemeData(
                textTheme: const TextTheme(titleLarge: TextStyle(fontSize: 25)),
                appBarTheme: const AppBarTheme(
                    color: Colors.white,
                    elevation: 0,
                    titleTextStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.w800))),
            themeMode: ThemeMode.light,
            home: const homwView(),
          ));
        
      
    
  }
}
