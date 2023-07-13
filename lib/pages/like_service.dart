import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Like {
  Like({
    required this.image,
    required this.text,
  });
  String image;
  String text;
}

List <Like> likelist = [
  Like(
    image: 'image', 
    text: 'text',
    ),
    Like(
    image: 'image', 
    text: 'text',
    ),
    Like(
    image: 'image', 
    text: 'text',
    ),
    Like(
    image: 'image', 
    text: 'text',
    ),
    Like(
    image: 'image', 
    text: 'text',
    ),
]

class LikeList extends ChangeNotifier {
  List<Like> likelist = [
    Like(content: 'image'),

  ];
}