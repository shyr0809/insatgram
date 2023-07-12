import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insatgram/pages/kwon_page.dart';

//15번째 줄부터 279번째 줄까지 앱바 밑 스크롤 뷰 위젯입니다.
//286번째 줄부터 앱바입니다.
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => kwon_page()),
        );
      },
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => kwon_page()),
        );
      },
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => kwon_page()),
        );
      },
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => kwon_page()),
        );
      },
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
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => kwon_page()),
        );
      },
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
        Column(
          children: [
            _twelve(),
            Text(
              "12조 자산가들",
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            _kwon(),
            Text("권용일", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            _lee(),
            Text("이승현", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            _jang(),
            Text("장석수", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            _hwang(),
            Text("황현아", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            _hong(),
            Text("홍현민", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        ...List.generate(
            1,
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
