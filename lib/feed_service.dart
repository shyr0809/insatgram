import 'package:flutter/material.dart';

import 'main.dart';

class Feed {
  Feed({
    required this.person,
    required this.content,
    this.isFavorite = false,
    this.mbti = "",
    required this.imgurl,
  });

  String person;
  List<String> content;
  bool isFavorite;
  String mbti;
  String imgurl;
}

class FeedService extends ChangeNotifier {
  List<Feed> feedList = [
    Feed(
      imgurl: "https://i.ibb.co/tKn3013/12jo.jpg",
      person: "12조 자산가들",
      content: [
        "팀 소개",
        "12조를 가진 자산가들이 되고싶은 4명의 I 와 1명의 E ",
        "추구하는 목표",
        "1인분 그 이상하는 개발자가 되자!",
        "우리 팀만의 약속",
        "30분마다 한마디 이상 하기(소통 많이 하기)\n혼자 고민하지 않기",
        "우리 팀만의 특징과 추구하는 궁극적인 목표",
        "본인이 맡은 역할을 끝까지 완수하려고 하는 책임감이 강한 팀입니다.\n어떤 프로젝트를 할지 정할 때 모두 각자의 의견을 냈습니다.\n의견 차이가 있으면 소통 후에 의견 차이를 좁혔습니다.\n계획에 맞게 딜레이 없이 잘 진행됐습니다.",
      ],
      isFavorite: true,
    ),
    Feed(
      imgurl: "https://i.ibb.co/RHBWbZ3/kwon.jpg",
      person: "권용일",
      content: [
        "INTJ",
        "악어(한번 물면 놓지않는다)",
        "귀찮아 하지 않는 개발자가 되고싶습니다",
        "먼저 말 걸어주셔서 감사합니다",
        "동네에 있을 것 같은 형 모습이라 든든할 것 같아요.",
        "친구랑 느낌이 비슷하시던데 진짜 무엇이든 노력으로 해결해주는 든든한 분",
        "왠지모르게 믿음이 가는 분이십니다",
        "이해가 되지 않는 것에 대해서는 끝까지 이해하려 노력한다",
      ],
    ),
    Feed(
      imgurl: "https://i.ibb.co/yNmwQH1/lee.jpg",
      person: "이승현",
      content: [
        "다람쥐(소심하고 겁이 많음)",
        "끝까지 노력하는 개발자가 되고 싶습니다",
        "정말 알고 싶은 거면 끝까지 알려고 합니다",
        "팀장 맡으시고 부담감이 커 보이심",
        "친한친구랑 닮으셔서 장난치고싶다",
        "책임감있게 행동하시는 모슴 보고 반할 뻔했습니다.",
        "동네에 무엇이든 알려주는 사람",
      ],
      mbti: "isfj",
    ),
    Feed(
      imgurl: "https://i.ibb.co/Z2y4hDF/jang.jpg",
      person: "장석수",
      content: [
        "INFP",
        "벌꿀오소리(겁이 없음)",
        "기초를 탄탄하게 다지고 그것을 기반으로 업무에 임하고자 노력함",
        "기본기가 탄탄한 개발자가 되고 싶습니다.",
        "첫인상이 프로개발자 같으심",
        "”고수의 분위기가 풍긴다”",
        "마술사 김준표 닮았다고 생각했어요",
        "은둔 고수처럼 결정적인 능력을 하나 감추고 계신 거 같다",
      ],
    ),
    Feed(
      imgurl: "https://i.ibb.co/wdpPmYB/hong.jpg",
      person: "홍현민",
      content: [
        "ENFP",
        "판다(살이 찌면서 게을려졌다)",
        "한 번도 오류 없이 프로젝트를 진행시킬 수 있는 개발자이며 이 무서운 상황을 통장에 찍히는 숫자로 극복할 수 있으면 좋겠다",
        "외우는 것보다 이해하여 원리를 파악하는 것을 좋아한다.",
        "장난기가 많으실것 같다",
        "전공을 노코멘트 하셔서 잘 하시는 줄 미리 알게 되었습니다",
        "아는 동생과 닮아서 호감가는 느낌",
        "처음 대화를 시작하신 분 답게 친절하게 다가와주셔서 되게 좋은 분이라고 느꼈습니다",
      ],
    ),
    Feed(
      imgurl: "https://i.ibb.co/31ks7KK/hwang.jpg",
      person: "황현아",
      content: [
        "ISFP",
        "나무늘보(게으름뱅이)",
        "팀원들에게 도움이 되는 개발자가 되고싶습니다",
        "게으르지만 맡은 일은 다 하고 게으름 피움",
        "일침을 잘 날리실것같다",
        "걸걸한 목소리만 들을 뻔 했는데, 아름다우신 분이 계셔서 좋았습니다.",
        "솔직히 저희 누나랑 닮았어서 놀랬습니다. 성격은 저희 누나랑 비교가 안되게 좋으시지만 말입니다",
      ],
    ),
  ];

  updateFavoriteFeed({required int index}) {
    Feed feed = feedList[index];
    feed.isFavorite = !feed.isFavorite;
    notifyListeners();
  }

  updateContentFeed({required int index, required String content}) {
    Feed feed = feedList[index];
    feed.content[0] = content;
    notifyListeners();
  }
}
