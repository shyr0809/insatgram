import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:insatgram/personal_layout.dart';

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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          _selectedIndex = (i + 1);
                        });
                        Navigator.pushNamed(context, '/page1');
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(70),
                            child: Container(
                                width: 70,
                                height: 70,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 1),
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.grey),
                                child: Image.network(
                                  feedList[i].imgurl,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ],
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
        InkWell(
          onDoubleTap: () {
            setState(() {
              feedService.updateFavoriteFeed(index: _selectedIndex);
            });
          },
          child: SizedBox(
              // feed image 영역
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.width * 0.75,
              child: Image.network(
                "https://i.ibb.co/vz5Xw9D/12jjo.jpg",
                fit: BoxFit.fill,
              )),
        ),
        Row(
          // feed button 영역
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // row item만의 간격 동일
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  feedService.updateFavoriteFeed(index: _selectedIndex);
                });
              },
              icon: feedList[_selectedIndex].isFavorite
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
                // 스크롤 가능한 영역
                child: Text(
              feedList[_selectedIndex].content.toString(),
              textAlign: TextAlign.start,
            )),
          ),
        )
      ],
    );
  }
}
