import 'package:flutter/material.dart';
import 'package:insatgram/pages/like_service.dart';
import 'package:provider/provider.dart';

class kwon_page extends StatelessWidget {
  const kwon_page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
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
=======
    return Center(
      child: Text(
        '권용일님 페이집니당.',
      ),
>>>>>>> 87ed2b4476189feff532dde4f0dfa2e9065be4e6
    );
    }
}ssss