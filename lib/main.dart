import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Row(
            children: [
              SizedBox(width: 20),
              Text(
                "name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black,
              ),
            ],
          ),
          leadingWidth: 100,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(125),
                    child: Image.network(
                      'https://img1.daumcdn.net/thumb/R1280x0/?scode=mtistory2&fname=https%3A%2F%2Fblog.kakaocdn.net%2Fdn%2Fbj4oa7%2FbtqLJWFLMgd%2Fwu4GV8PKbXdICuyW0me0zk%2Fimg.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width * 0.2),
                  GestureDetector(
                    onTap: () {},
                    child: Icon(
                      CupertinoIcons.heart,
                      color: Colors.black,
                      size: 70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Text(
                "data",
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          child: BottomNavigationBar(
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.transparent,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.transparent,
                ),
                label: '',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
