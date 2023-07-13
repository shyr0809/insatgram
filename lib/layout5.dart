import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';
import 'package:insatgram/main_layout2.dart';
import 'package:insatgram/personal_layout.dart';
import 'package:provider/provider.dart';
class layout5 extends StatelessWidget {
  const layout5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Insatgram",
            style: TextStyle(fontSize: 28),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(32),
                  child: Image.network(
                    "https://i.postimg.cc/YqkKmvPt/2.png",
                    width: 400,
                  ),
                ),
                Text(
                 '1. 자신에 대한 설명 및 MBTI',
                  style: TextStyle(
                    fontSize: 25)
                  ),
                
                Text(
                    '2. 객관적으로 살펴본 자신의 장점',
                  style: TextStyle(
                    fontSize: 25)
                  ),
                
                Text(
                    '3. 자신의 협업 스타일 소개',
                  style: TextStyle(
                    fontSize: 25)
                ),
                Text(                  
                    '4. 블로그 주소',
                  style: TextStyle(
                    fontSize: 25)
                ),
                
                  
                
              ],
            ),
          ),
        ),
      )
    ;
  }
}