import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Like {
  Like({
    required this.image,
    required this.text,
    this.isFavorite = false,
  });
  String image;
  String text;
  bool isFavorite;
}

class LikeService extends ChangeNotifier {
  List<Like> likeList = [
    Like(
      image: 'asset/images/human.png',
      text: "text",
      isFavorite: true,
    ),
    Like(image: 'asset/images/human.png', text: "text'"),
    Like(
      image: 'asset/images/human.png',
      text: "text",
    ),
    Like(
      image: 'asset/images/human.png',
      text: "text",
    ),
    Like(
      image: 'asset/images/human.png',
      text: "text",
    ),
  ];
}

class LikeList extends ChangeNotifier {
  updateFavoriteFeed({required int index}) {
    Like like = likeList[index];
    like.isFavorite = !like.isFavorite;
    notifyListeners();
  }
}
