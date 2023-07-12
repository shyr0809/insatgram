import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0; // 현 페이지 index 설정
  int _bottomSelectedIndex = 0; // bottomNavigation index

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedService>(
      builder: (context, feedService, child) {
        List<Feed> feedList = feedService.feedList;
        List<String> dropDownItems = feedList
            .map((e) => e.person == "12조 자산가들" ? "insatgram" : e.person)
            .toList();
        return Scaffold(
          appBar: AppBar(
            elevation: 0, // appbar body와의 높이 설정
            backgroundColor: Colors.white,
            leadingWidth: MediaQuery.of(context).size.width *
                0.5, // leading 가로 앱 사이즈 가로의 50%
            leading: Padding(
              padding: const EdgeInsets.only(left: 20),
              child: DropdownButton(
                // dropdownbutton
                underline: const SizedBox.shrink(), // dropdown item 밑줄 설정
                alignment: Alignment.center, // dropdown item 가운데 설정
                items:
                    dropDownItems.map<DropdownMenuItem<String>>((String value) {
                  // dropdown item 넣는 코드인데 어떤 원리로 되는지 잘 모르겠습니다.
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(
                      value,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  );
                }).toList(),
                value: dropDownItems[_selectedIndex], // 현 item value 설정
                onChanged: (String? value) {
                  setState(() {
                    _selectedIndex = dropDownItems.indexOf(value!);
                    // Navigator.push(context, MaterialPageRoute(builder: (_) => )))
                  });
                },
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "팀 피드"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "팔로잉"),
            ],
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: _bottomSelectedIndex,
            onTap: _onBottomTapped,
          ),
          body: SafeArea(
            child: Column(
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
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween, // row item만의 간격 동일
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
            ),
          ),
        );
      },
    );
  }

  void _onBottomTapped(int value) {
    value == 0 ? print("home") : print("following");
    setState(() {
      _bottomSelectedIndex = value;
    });
  }
}