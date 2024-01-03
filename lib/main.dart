import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/page_home.dart';
import 'package:flutter_application_1/view/page_home2.dart';
import 'package:flutter_application_1/view_model/main_view_model.dart';
import 'package:flutter_application_1/view_model/main_view_model2.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => MainViewModel()),
        ChangeNotifierProvider(create: (_) => MainViewModel2()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage2(),
    );
  }
}
