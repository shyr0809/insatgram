import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => FeedService()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  int _selectedIndex = 0; // 현 페이지 index 설정
  late TabController _tabController; // tabcontroller 선언
  List<String> dropDownItems = <String>[
    'Instagram',
    'Two',
    'Three',
    'Four'
  ]; // dropdown item list
  var _selecteddropDownItems = 'instagram'; // dropdown 선택된 아이템
  bool isFavorite = false;
  @override
  void initState() {
    // tabcontroller 초기 설정
    super.initState();
    _tabController = TabController(
      length: 1,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // tabcontroller 초기 해제
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<FeedService>(
      builder: (context, feedService, child) {
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
                  print(value);
                  setState(() {
                    _selecteddropDownItems = value!;
                    _selectedIndex = dropDownItems.indexOf(value);
                    // Navigator.push(context, MaterialPageRoute(builder: (_) => )))
                  });
                },
              ),
            ),
          ),
          bottomNavigationBar: TabBar(
            // bottomnavigationbar에 tabbar 넣기
            controller: _tabController, // tab을 했을 경우 event를 위해서 controller 설정
            onTap: (index) {
              // tab버튼 누를 경우 홈으로
              print("home");
              setState(() {
                _selectedIndex = 0;
              });
            },
            tabs: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
                height: MediaQuery.of(context).size.width * 0.1,
                child: const Tab(
                  // tab item 설정
                  icon: Icon(
                    Icons.home,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          body: SafeArea(
            child: TabBarView(
              // tab했을 경우 돌아올 layout에 tabbarview 설정
              controller: _tabController, // tab을 했을 경우 event를 위해서 controller 연결
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment
                          .spaceEvenly, // row item끼리의 간격+첫번째, 마지막 item 좌우 간격 동일
                      children: [
                        for (int i = 0; i < 5; i++)
                          ElevatedButton(
                            onPressed: () {
                              print(i.toString());
                              // Navigator.push(context, MaterialPageRoute(builder: (_) => )))
                            },
                            child: Text(i.toString()), // 팀원 image 넣기
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(
                                  MediaQuery.of(context).size.width * 0.19,
                                  MediaQuery.of(context).size.width * 0.19),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(// 원형 모양 버튼
                                    MediaQuery.of(context).size.width * 0.1),
                              ),
                            ),
                          )
                      ],
                    ),
                    Container(
                      // feed title 영역
                      color: Colors.grey,
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.all(5),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "12조 자산가들",
                        style: TextStyle(
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
                              isFavorite = !isFavorite;
                            });
                          },
                          icon: isFavorite
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
                    const Expanded(
                      // 남은 공간 다 차지
                      child: SingleChildScrollView(
                        // 스크롤 가능한 영역
                        child: Text(
                          // feed text 설정
                          "ddddd14514352534523452343gddddddfddsg23q45asdfafasdfsasdfasdfsdaaaaaaaaaaaaaaaaadddddddddddddddddddddddddddddddddddddddddddddddddddddddaaaaaaaaaaaaaaaaaaaaa42342342",
                          textAlign: TextAlign.start,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
