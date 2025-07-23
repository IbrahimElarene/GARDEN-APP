import 'package:flutter/material.dart';

import '../core/app_icons/app_icons.dart';

class CardItemWidget extends StatelessWidget {
   CardItemWidget({super.key,required this.image,required this.title,required this.imageDown,required this.imageRight});
String image;
String title;
String imageDown;
String imageRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      height: 135,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xffD9D9D9)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 5,
          children: [
            Row(
              children: [
                Image.asset(image),
                Spacer(),
                Image.asset(imageRight),
              ],),
            Text(title,style: TextStyle(fontSize: 16),),
            Image.asset(imageDown),
          ],
        ),
      ),
    );
  }
}
