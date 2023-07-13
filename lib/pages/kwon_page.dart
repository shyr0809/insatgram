import 'package:flutter/material.dart';
import 'package:insatgram/pages/like_service.dart';
import 'package:provider/provider.dart';

class kwon_page extends StatelessWidget {
  const kwon_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<LikeList>(
      builder: (context, LikeList, child) {
        List<Like> likelist = LikeList.likelist;
        return Scaffold (
          body: Padding(padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView.separated(itemCount: likelist.length,
          separatorBuilder: (context, index){
            return Divider();
          },
          itemBuilder: (context, index) {
                    if (..isEmpty) return SizedBox();
                  ok = ..elementAt(index);
                    return (: );
                  },
                ),
              ),);
      }
    );
    }
}ssss