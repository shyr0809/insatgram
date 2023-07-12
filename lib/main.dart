import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'first_pages.dart';
import 'second_pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Widget _twelve() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Image.network(
                  "https://i.ibb.co/tKn3013/12jo.jpg",
                  fit: BoxFit.cover,
                )),
          ),
          Positioned(
              right: 5,
              bottom: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    border: Border.all(color: Colors.white, width: 2)),
                child: const Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                        fontSize: 15, color: Colors.white, height: 1.1),
                  ),
                ),
              ))
        ],
      ),
    );
  }

  Widget _kwon() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Container(
              width: 60,
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 1),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
              child: Image.network(
                "https://i.ibb.co/RHBWbZ3/kwon.jpg",
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _lee() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Image.network(
                  "https://i.ibb.co/yNmwQH1/lee.jpg",
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }

  Widget _jang() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Image.network(
                  "https://i.ibb.co/Z2y4hDF/jang.jpg",
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }

  Widget _hwang() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Image.network(
                  "https://i.ibb.co/31ks7KK/hwang.jpg",
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }

  Widget _hong() {
    return InkWell(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(65),
            child: Container(
                width: 60,
                height: 60,
                margin: const EdgeInsets.symmetric(horizontal: 1),
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                child: Image.network(
                  "https://i.ibb.co/wdpPmYB/hong.jpg",
                  fit: BoxFit.cover,
                )),
          )
        ],
      ),
    );
  }

  Widget _storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: (Row(children: [
        const SizedBox(
          width: 10,
        ),
        _twelve(),
        const SizedBox(
          width: 10,
        ),
        _kwon(),
        const SizedBox(
          width: 10,
        ),
        _lee(),
        const SizedBox(
          width: 10,
        ),
        _jang(),
        const SizedBox(
          width: 10,
        ),
        _hwang(),
        const SizedBox(
          width: 10,
        ),
        _hong(),
        const SizedBox(
          width: 10,
        ),
        ...List.generate(
            7,
            (index) => ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Container(
                    width: 65,
                    height: 65,
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.grey),
                    child: Image.network(
                      "https://i.ibb.co/nngK6j3/startup.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ))
      ])),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text(
              "insatgram",
              style: TextStyle(fontSize: 21, color: Colors.black),
            )),
        body: ListView(
          children: [
            _storyBoardList(),
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
              onDoubleTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Image.network(
                  "https://i.ibb.co/vz5Xw9D/12jjo.jpg",
                  height: 250,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
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
      ),
    );
  }
}
