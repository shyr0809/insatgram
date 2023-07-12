import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:provider/provider.dart';

import 'main_layout.dart';

import 'pages/home_page.dart';

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
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'insatgram',
      home: MyHomePage(),
    );
  }
}
