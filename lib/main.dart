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
  HomePage({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> data1 = [
    {
      'name': 'hwang',
      'textData': '개인 소개글111',
      'imageUrl':
          'https://src.hidoc.co.kr/image/lib/2022/5/12/1652337370806_0.jpg',
    }
  ];
  final List<Map<String, dynamic>> data2 = [
    {
      'name': 'lee',
      'textData': '개인 소개글222',
      'imageUrl':
          'https://image.utoimage.com/preview/cp872722/2022/12/202212008465_206.jpg',
    }
  ];
  final List<Map<String, dynamic>> data3 = [
    {
      'name': 'kwon',
      'textData': '개인 소개글333',
      'imageUrl':
          'https://image.dongascience.com/Photo/2019/05/3e95c45fbe6710365e999ebbd32ed37e.jpg',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.radio_button_checked),
              iconSize: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PersonalPage(
                      data: data1,
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.radio_button_checked),
              iconSize: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PersonalPage(
                      data: data2,
                    ),
                  ),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.radio_button_checked),
              iconSize: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => PersonalPage(
                      data: data3,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class PersonalPage extends StatefulWidget {
  const PersonalPage({Key? key, required this.data}) : super(key: key);

  final List<Map<String, dynamic>> data;

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  int currentIndex = 0;
  bool heart = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentData = widget.data[currentIndex];
    String name = currentData['name'];
    String textData = currentData['textData'];
    String imageUrl = currentData['imageUrl'];

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
                name,
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
          leadingWidth: 120,
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
                      imageUrl,
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
                        heart = !heart;
                      });
                    },
                    child: Icon(
                      heart ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                      color: heart ? Colors.redAccent : Colors.black,
                      size: 70,
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.width * 0.1),
              Text(
                // 개인 소개글
                textData,
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black,
          currentIndex: _selectedIndex,
          onTap: (int index) {
            setState(() {
              _selectedIndex = index;
            });
            if (index == 0) {
              Navigator.pop(context);
            }
          },
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
