import 'crew.dart';
import 'package:flutter/material.dart';
import 'like_provider.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var bottomNavIndex = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        TeamPage(),
        CrewPage(),
        LikePage(),
      ].elementAt(bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        iconSize: 28,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            bottomNavIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_sharp),
            label: '멤버',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: '좋아요',
          ),
        ],
        currentIndex: bottomNavIndex,
      ),
    );
  }
}

class TeamPage extends StatelessWidget {
  TeamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Text(
          'Insatgram',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 200.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 90.0,
              color: Colors.red,
            ),
            Container(
              width: 90.0,
              color: Colors.blue,
            ),
            Container(
              width: 90.0,
              color: Colors.green,
            ),
            Container(
              width: 90.0,
              color: Colors.yellow,
            ),
            Container(
              width: 90.0,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}

class CrewPage extends StatelessWidget {
  CrewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Text(
          'Crew',
          style: TextStyle(
            color: Colors.black,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.map),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
          ),
        ],
      ),
    );
  }
}

class LikePage extends StatelessWidget {
  LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          toolbarHeight: 60,
          title: Text(
            'Like',
            style: TextStyle(
              color: Colors.black,
              fontSize: 22,
            ),
          ),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ),
            ListTile(
              leading: Icon(Icons.map),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ),
            ListTile(
              leading: Icon(Icons.map),
              trailing: IconButton(
                  onPressed: () {}, icon: Icon(Icons.favorite_border)),
            )
          ],
        ));
  }
}
