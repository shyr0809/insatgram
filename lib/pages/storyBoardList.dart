import 'package:flutter/material.dart';
import 'package:insatgram/pages/kwon_page.dart';

class storyBoardList extends StatefulWidget {
  const storyBoardList({Key? key}) : super(key: key);

  @override
  State<storyBoardList> createState() => _storyBoardListState();
}

class _storyBoardListState extends State<storyBoardList> {
  Widget twelve() {
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

  Widget kwon() {
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

  Widget lee() {
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

  Widget jang() {
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

  Widget hwang() {
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

  Widget hong() {
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

  Widget storyBoardList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: (Row(children: [
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            twelve(),
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
            kwon(),
            Text("권용일", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            lee(),
            Text("v이승현v", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            jang(),
            Text("장석수", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            hwang(),
            Text("황현아", style: TextStyle(fontWeight: FontWeight.bold))
          ],
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          children: [
            hong(),
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

  @override
  Widget build(BuildContext context) {
    return storyBoardList();
  }
}
