import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';

class LikeListPage extends StatefulWidget {
  const LikeListPage(
      {Key? key, required this.feedService, required this.selectedIndex})
      : super(key: key);

  final FeedService feedService;
  final int selectedIndex;

  @override
  State<LikeListPage> createState() => _LikeListPageState();
}

class _LikeListPageState extends State<LikeListPage> {
  @override
  Widget build(BuildContext context) {
    FeedService feedService = widget.feedService;
    List<Feed> feedList = widget.feedService.feedList;
    int _selectedIndex = widget.selectedIndex;
    return ListView.builder(
      itemCount: feedList.length - 1,
      itemBuilder: (context, index) {
        ListTile(
          leading:
              Image.network(feedList[index + 1].imgurl), //likelist 이미지 가져오기
          title: Text(feedList[index + 1].person), //likelist text 가져오기
          trailing: IconButton(
            onPressed: () {
              setState(() {
                feedService.updateFavoriteFeed(index: index + 1);
              });
            },
            icon: feedList[index + 1].isFavorite
                ? const Icon(
                    Icons.favorite,
                    color: Colors.pink,
                  )
                : const Icon(Icons.favorite_border),
          ),
        );
      },
    );
  }
}
