import 'package:flutter/material.dart';
import 'package:shop_bd/Screens/HomeScreens/home.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white,),
        cardTheme: CardThemeData(color: Colors.white),
      ),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: home(),
    );
  }
}
