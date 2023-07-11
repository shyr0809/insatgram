import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
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
  List<String> dropDownItems = <String>['Instagram', 'Two', 'Three', 'Four'];
  var _selecteddropDownItems = 'instagram';

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 25),
                ),
              );
            }).toList(),
            value: dropDownItems[_selectedIndex],
            onChanged: (String? value) {
              setState(() {
                _selecteddropDownItems = value!;
                _selectedIndex = dropDownItems.indexOf(value);
              });
            },
          ),
        ),
      ),
      bottomNavigationBar: TabBar(
        controller: _tabController,
        tabs: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.1,
            height: MediaQuery.of(context).size.width * 0.1,
            child: const Tab(
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
          controller: _tabController,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    for (int i = 0; i < 5; i++)
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(i.toString()), // 팀원 image 넣기
                        style: ElevatedButton.styleFrom(
                          fixedSize: Size(
                              MediaQuery.of(context).size.width * 0.19,
                              MediaQuery.of(context).size.width * 0.19),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.1),
                          ),
                        ),
                      )
                  ],
                ),
                Container(
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
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: MediaQuery.of(context).size.width * 0.75,
                  child: Container(
                    color: Colors.yellow,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.favorite_border),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit),
                    ),
                  ],
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    child: Text(
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
  }
}
