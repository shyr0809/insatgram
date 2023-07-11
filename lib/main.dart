import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(Icons.abc),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PersonalPage()),
            );
          },
        ),
      ),
    );
  }
}

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key}) : super(key: key);

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_filled,
                size: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                CupertinoIcons.heart_fill,
                size: 38,
              ),
              label: 'Like',
            ),
          ],
        ),
      ),
    );
  }
}
