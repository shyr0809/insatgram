import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:insatgram/feed_service.dart';

class PersonalLayout extends StatefulWidget {
  const PersonalLayout(
      {Key? key, required this.feedService, required this.selectedIndex})
      : super(key: key);

  final FeedService feedService;
  final int selectedIndex;

  @override
  State<PersonalLayout> createState() => _PersonalLayoutState();
}

class _PersonalLayoutState extends State<PersonalLayout> {
  @override
  Widget build(BuildContext context) {
    FeedService feedService = widget.feedService;
    List<Feed> feedList = widget.feedService.feedList;
    int _selectedIndex = widget.selectedIndex;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(125),
                child: Image.network(
                  feedList[_selectedIndex].imgurl,
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.2),
              GestureDetector(
                onTap: () {
                  setState(() {
                    feedService.updateFavoriteFeed(index: _selectedIndex);
                  });
                },
                child: Icon(
                  feedList[_selectedIndex].isFavorite
                      ? CupertinoIcons.heart_fill
                      : CupertinoIcons.heart,
                  color: feedList[_selectedIndex].isFavorite
                      ? Colors.redAccent
                      : Colors.black,
                  size: 70,
                ),
              ),
            ],
          ),
          SizedBox(height: MediaQuery.of(context).size.width * 0.1),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Text(
                  feedList[_selectedIndex].content[index],
                  style: TextStyle(fontSize: 20, color: Colors.black),
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              },
              itemCount: feedList[_selectedIndex].content.length,
            ),
          ),
        ],
      ),
    );
  }
}
