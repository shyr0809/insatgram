import 'package:flutter/material.dart';

import 'main.dart';

class Feed {
  Feed({
    required this.person,
    required this.content,
    this.isFavorite = false,
  });

  String person;
  String content;
  bool isFavorite;
}

class FeedService extends ChangeNotifier {
  List<Feed> feedList = [
    Feed(
      person: "12조 자산가들",
      content:
          "안녕하세요.\n\n\n\n\n\n\n\n\n\n\n첫 주에 함께 팀을 맺게 되어서 영광입니다.\n\n\n I임에 더불어서 첫주라 서로에게 말을 쉽게 하지 못했던 거 같습니다. 남은 몇일동안은 다시 만나면 쉽게 인사할 사이까지만이라도 친해졌으면 합니다.\n 제가 몇개는 설명해드렸는데, 아직 설명에 미숙함 점 죄송드립니다. 다들 원하시던 일들 잘 풀리시기 기원합니다.",
      isFavorite: true,
    ),
    Feed(person: "ㅇㅇㅇ", content: "ㅈㅈㅈㅈㅈ"),
    Feed(person: "ㅈㅈㅈ", content: "ㅈㅈㅈㅈㅈ"),
    Feed(person: "ㄴㄴㄴ", content: "ㅈㅈㅈㅈㅈ"),
    Feed(person: "ㅁㅁㅁ", content: "ㅈㅈㅈㅈㅈ"),
    Feed(person: "ㅎㅎㅎ", content: "ㅈㅈㅈㅈㅈ"),
  ];

  updateFavoriteFeed({required int index}) {
    Feed feed = feedList[index];
    feed.isFavorite = !feed.isFavorite;
    notifyListeners();
  }

  updateContentFeed({required int index, required String content}) {
    Feed feed = feedList[index];
    feed.content = content;
    notifyListeners();
  }
}
