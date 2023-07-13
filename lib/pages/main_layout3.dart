import 'package:flutter/material.dart';
import 'like_service.dart';
import 'package:provider/provider.dart';
import 'package:flutter/cupertino.dart';

class LikeListPage extends StatelessWidget {
  const LikeListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    LikeService likeService = widget.likeservice;
    List likeList = widget.likeService.likeList;
    return ListView.builder(
      itemCount: likeList.length,
      itemBuilder: (context, index) {List listlike = likeList[index];
    })
    return ListTile(
      leading: Image.asset(name),//likelist 이미지 가져오기
      title: Text(likeList.text),//likelist text 가져오기 
      trailing: IconButton(onPressed: () {
                setState(() {
                  likeService.updateFavoriteFeed(index: 0);
                });
              },
              icon: feedList[0].isFavorite
                  ? const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                    )
                  : const Icon(Icons.favorite_border),
            ),);

      

    
  }
}
