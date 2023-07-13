import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:provider/provider.dart';

import 'home_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // 현 페이지 index 설정
  int _bottomSelectedIndex = 0; // bottomNavigation index

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedService>(
      builder: (context, feedService, child) {
        List<Feed> feedList = feedService.feedList;
        List<String> dropDownItems = feedList
            .map((e) => e.person == "12조 자산가들" ? "insatgram" : e.person)
            .toList(); // DropDownList item
        return Scaffold(
          appBar: appbar(context, dropDownItems),
          bottomNavigationBar: bottomNaivgationBar(),
          body: SafeArea(
            child: HomeLayout(
              feedService: feedService,
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBar bottomNaivgationBar() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "팀 피드"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "팔로잉"),
      ],
      showSelectedLabels: false,
      showUnselectedLabels: false,
      currentIndex: _bottomSelectedIndex,
      onTap: _onBottomTapped,
    );
  }

  AppBar appbar(BuildContext context, List<String> dropDownItems) {
    return AppBar(
      elevation: 0, // appbar body와의 높이 설정
      backgroundColor: Colors.white,
      leadingWidth:
          MediaQuery.of(context).size.width * 0.5, // leading 가로 앱 사이즈 가로의 50%
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: DropdownButton(
          // dropdownbutton
          underline: const SizedBox.shrink(), // dropdown item 밑줄 설정
          alignment: Alignment.center, // dropdown item 가운데 설정
          items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
            // dropdown item 넣는 코드인데 어떤 원리로 되는지 잘 모르겠습니다.
            return DropdownMenuItem<String>(
              value: value, // item value라고 index와 같은 의미라고 할 수 있다.
              child: Text(
                value,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            );
          }).toList(),
          value: dropDownItems[_selectedIndex], // 현 item value 설정
          onChanged: (String? value) {
            // dropdownlist 변경
            setState(() {
              _selectedIndex = dropDownItems.indexOf(value!);
              // Navigator.push(context, MaterialPageRoute(builder: (_) => )))
            });
          },
        ),
      ),
    );
  }

  void _onBottomTapped(int value) {
    // navigationbar 클릭시 변화
    value == 0 ? print("home") : print("following");
    setState(() {
      _bottomSelectedIndex = value;
    });
  }
}