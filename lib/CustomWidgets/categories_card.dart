import 'package:flutter/material.dart';

import '../utils/constants/colors.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key, required this.imageUrl, required this.title,

  });

  final String imageUrl,title;
  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.only(right: width * 0.03),
      height: height *0.2,
      width: width *0.3,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: TColors.light
      ),
      child:   Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 10,
            left: 16,
            child: Center(
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(imageUrl),
              ),
            ),
          ),
          Positioned(
              bottom: 40,left: 35,child: Text(title,style: Theme.of(context).textTheme.bodyMedium)),
        ],
      ),
    );
  }
}
