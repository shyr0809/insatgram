import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({
    super.key,
    required this.feedService,
    required this.selectedIndex,
  });

  final FeedService feedService;
  final int selectedIndex;

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  @override
  Widget build(BuildContext context) {
    FeedService feedService = widget.feedService;
    List<Feed> feedList = widget.feedService.feedList;
    int _selectedIndex = widget.selectedIndex;
    return Column(
      children: [
        Container(
          height: 75,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              for (int i = 0; i < feedList.length - 1; i++)
                Padding(
                  padding: const EdgeInsets.all(2.5),
                  child: ElevatedButton(
                    onPressed: () {
                      print(i.toString());
                      setState(() {
                        _selectedIndex = 1;
                      });
                      // Navigator.push(context, MaterialPageRoute(builder: (_) => )))
                    },
                    child: Text(feedList[i + 1].person), // 팀원 image 넣기
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(73.5, 73.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(// 원형 모양 버튼
                            MediaQuery.of(context).size.width * 0.1),
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
        Container(
          // feed title 영역
          color: Colors.grey,
          margin: const EdgeInsets.all(5),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.centerLeft,
          child: Text(
            feedList[0].person,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          // feed image 영역
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.width * 0.75,
          child: Container(
            color: Colors.yellow,
          ),
        ),
        Row(
          // feed button 영역
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // row item만의 간격 동일
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  feedService.updateFavoriteFeed(index: 0);
                });
              },
              icon: feedList[0].isFavorite
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    )
                  : const Icon(Icons.favorite_border),
            ),
            IconButton(
              onPressed: () {
                print("edit");
              },
              icon: const Icon(Icons.edit),
            ),
          ],
        ),
        Expanded(
          // 남은 공간 다 차지
          child: SingleChildScrollView(
              // 스크롤 가능한 영역
              child: Text(
            feedList[0].content.toString(),
            textAlign: TextAlign.start,
          )),
        )
      ],
    );
  }
}
