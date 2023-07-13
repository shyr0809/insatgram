import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PersonalLayout extends StatefulWidget {
  const PersonalLayout({Key? key}) : super(key: key);

  @override
  State<PersonalLayout> createState() => _PersonalLayoutState();
}

class _PersonalLayoutState extends State<PersonalLayout> {
  int currentIndex = 0;
  bool heart = false;
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final currentData = <String, dynamic>{
      'name': 'hwang',
      'textData': '개인 소개글111',
      'imageUrl':
          'https://src.hidoc.co.kr/image/lib/2022/5/12/1652337370806_0.jpg',
    };
    String name = currentData['name'];
    String textData = currentData['textData'];
    String imageUrl = currentData['imageUrl'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                // 사용자 이미지
                borderRadius: BorderRadius.circular(125),
                child: Image.network(
                  imageUrl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.2),
              GestureDetector(
                // 하트 이모티콘 (클릭)
                onTap: () {
                  setState(() {
                    heart = !heart;
                  });
                },
                child: Icon(
                  heart ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
                  color: heart ? Colors.redAccent : Colors.black,
                  size: 70,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.1),
          Text(
            // 개인 소개글
            textData,
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
