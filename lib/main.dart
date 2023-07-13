import 'package:flutter/material.dart';
import 'main_layout2.dart';

void main() {
  runApp(MyApp());
import 'package:insatgram/feed_service.dart';
import 'package:provider/provider.dart';

import 'MyHomePage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FeedService()),
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
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'insatgram',
      home: MyHomePage(),
    );
  }
}
