import 'package:flutter/material.dart';
import 'like_provider.dart';
import 'home.dart';
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
  const MyApp({super.key});

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'insatgram',
      home: HomePage(),
    );
  }
}
