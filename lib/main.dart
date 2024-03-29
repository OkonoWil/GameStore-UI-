import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gamestore_test_ui/pages/home/home.dart';
import 'package:gamestore_test_ui/configs/theme.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isDarkTheme = false;
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent)
    );
    return   MaterialApp(
      title: 'Game Store',
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: getAppTheme(
                  context: context,
                  isDarkTheme: isDarkTheme,
                ),
    );
  }
}

