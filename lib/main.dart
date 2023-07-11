import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool Heart = false;

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
                // 사용자 이름
                "name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
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
                    // 사용자 이미지
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
                    // 하트 이모티콘 (클릭)
                    onTap: () {
                      setState(() {
                        Heart = !Heart;
                      });
                    },
                    child: Icon(
                      Heart ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                      color: Heart ? Colors.redAccent : Colors.black,
                      size: 70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Text(
                // 개인 메시지
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
                // 홈 버튼
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black,
                  size: 40,
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
