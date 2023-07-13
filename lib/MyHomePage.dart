import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:insatgram/likeListPage.dart';
import 'package:insatgram/personal_layout.dart';
import 'package:provider/provider.dart';

import 'home_layout.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0; // 현 페이지 index 설정
  int _dropdownIndex = 0;
  int _bottomSelectedIndex = 0; // bottomNavigation index

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return HomeLayout(
          feedService: Provider.of<FeedService>(context),
          selectedIndex: _selectedIndex,
          dropdownIndex: _dropdownIndex,
        );
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
        return PersonalLayout(
          feedService: Provider.of<FeedService>(context),
          selectedIndex: _selectedIndex,
        );
      default:
        return LikeListPage(
          feedService: Provider.of<FeedService>(context),
          selectedIndex: _selectedIndex,
        );
    }
  }

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
          body: _buildBody(),
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
      onTap: (index) {
        setState(() {
          _bottomSelectedIndex = index;
          switch (index) {
            case 0:
              _selectedIndex = 0;
              _dropdownIndex = 0;
              break;
            case 1:
              _selectedIndex = 6;
              break;
            default:
              throw Exception('Invalid bottom navigation item');
          }
        });
      },
    );
  }

  AppBar appbar(BuildContext context, List<String> dropDownItems) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leadingWidth: MediaQuery.of(context).size.width * 0.5,
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: DropdownButton(
          underline: const SizedBox.shrink(),
          alignment: Alignment.center,
          items: dropDownItems.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            );
          }).toList(),
          value: dropDownItems[_dropdownIndex],
          onChanged: (String? value) {
            setState(() {
              _dropdownIndex = dropDownItems.indexOf(value!);
              _selectedIndex = _dropdownIndex;
            });
          },
        ),
      ),
    );
  }
}
