import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:insatgram/pages/storyboardlist.dart';

//15번째 줄부터 279번째 줄까지 앱바 밑 스크롤 뷰 위젯입니다.
//286번째 줄부터 앱바입니다.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "insatgram",
            style: TextStyle(
                fontSize: 32, color: Colors.black, fontFamily: "instagram"),
          )),
      body: ListView(
        children: [
          storyBoardList(),
          Divider(
            height: 5,
          ),
          Row(
            children: [
              const SizedBox(
                width: 10,
              ),
              Text(
                "12조 자산가들",
                style: TextStyle(
                    fontSize: 21,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Divider(
            height: 5,
          ),
          InkWell(
            onDoubleTap: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            child: Padding(
              padding: const EdgeInsets.all(0),
              child: Image.network(
                "https://i.ibb.co/vz5Xw9D/12jjo.jpg",
                height: 250,
                width: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  icon: Icon(
                    isFavorite
                        ? CupertinoIcons.heart_fill
                        : CupertinoIcons.heart,
                    color: isFavorite ? Colors.pink : Colors.black,
                  )),
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: '홈',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '좋아요 리스트',
          ),
        ],
        currentIndex: 0,
      ),
    );
  }
}
