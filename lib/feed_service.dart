import 'package:flutter/material.dart';

import 'main.dart';

class Feed {
  Feed({
    required this.person,
    required this.content,
    this.isFavorite = false,
    this.mbti = "",
  });

  String person;
  List<String> content;
  bool isFavorite;
  String mbti;
}

class FeedService extends ChangeNotifier {
  List<Feed> feedList = [
    Feed(
      person: "12조 자산가들",
      content: [
        "안녕하세요.\n\n\n\n\n\n\n\n\n\n\n첫 주에 함께 팀을 맺게 되어서 영광입니다.\n\n\n I임에 더불어서 첫주라 서로에게 말을 쉽게 하지 못했던 거 같습니다. 남은 몇일동안은 다시 만나면 쉽게 인사할 사이까지만이라도 친해졌으면 합니다.\n 제가 몇개는 설명해드렸는데, 아직 설명에 미숙함 점 죄송드립니다. 다들 원하시던 일들 잘 풀리시기 기원합니다.",
      ],
      isFavorite: true,
    ),
    Feed(
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
      person: "장석수",
      content: [
        "INFP",
        "벌꿀오소리(겁이 없음)	기본기가 탄탄한 개발자가 되고 싶습니다.	첫인상이 프로개발자 같으심",
        "”고수의 분위기가 풍긴다”",
        "마술사 김준표 닮았다고 생각했어요",
        "은둔 고수처럼 결정적인 능력을 하나 감추고 계신 거 같다",
        "기초를 탄탄하게 다지고 그것을 기반으로 업무에 임하고자 노력함",
      ],
    ),
    Feed(
      person: "홍현민",
      content: [
        "ENFP",
        "판다(살이 찌면서 게을려졌다)",
        "한 번도 오류 없이 프로젝트를 진행시킬 수 있는 개발자이며 이 무서운 상황을 통장에 찍히는 숫자로 극복할 수 있으면 좋겠다",
        "장난기가 많으실것 같다",
        "전공을 노코멘트 하셔서 잘 하시는 줄 미리 알게 되었습니다",
        "아는 동생과 닮아서 호감가는 느낌",
        "처음 대화를 시작하신 분 답게 친절하게 다가와주셔서 되게 좋은 분이라고 느꼈습니다",
        "외우는 것보다 이해하여 원리를 파악하는 것을 좋아한다.",
      ],
    ),
    Feed(
      person: "황현아",
      content: [
        "ISFP",
        "나무늘보(게으름뱅이)",
        "팀원들에게 도움이 되는 개발자가 되고싶습니다",
        "일침을 잘 날리실것같다",
        "걸걸한 목소리만 들을 뻔 했는데, 아름다우신 분이 계셔서 좋았습니다.",
        "솔직히 저희 누나랑 닮았어서 놀랬습니다. 성격은 저희 누나랑 비교가 안되게 좋으시지만 말입니다",
        "게으르지만 맡은 일은 다 하고 게으름 피움",
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
