import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:insatgram/pages/home_page.dart';
import 'package:provider/provider.dart';

<<<<<<< HEAD
import 'main_layout.dart';
import 'pages/like_service.dart';
import 'MyHomePage.dart';

=======
>>>>>>> 87ed2b4476189feff532dde4f0dfa2e9065be4e6
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
