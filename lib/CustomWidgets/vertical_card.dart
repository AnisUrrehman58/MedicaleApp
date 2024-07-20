import 'package:flutter/material.dart';
import 'package:medical_store/Screen/detail_screen.dart';

import '../utils/constants/colors.dart';
import '../utils/constants/size.dart';

class VerticalCards extends StatelessWidget {
  const VerticalCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (_) => const DetailScreen()));
      },
      child: Container(
        height: 280,
        width:  200,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: TColors.grey,spreadRadius: 2,blurRadius: 10,offset: Offset(1,1)
              )],
            borderRadius: BorderRadius.circular(TSize.md),
            border: Border.all(color: TColors.grey.withOpacity(0.3)),
            color: const Color(0xffFFFFFF)
        ),
        child: Stack(
          children: [
            Container(
              height: 170,
              width:  200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(TSize.md),
                  color:const Color(0xfff6f6f8),
                  image:  const DecorationImage(
                      image: AssetImage('assets/Banners/medicine.png'),scale: 0.10
                  )),
            ),
            Positioned(
              left: 10,
              bottom: 35,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Accuse-check Active',style: Theme.of(context).textTheme.labelSmall),
                  const SizedBox(height: 5),
                  Text('Test Strip',style: Theme.of(context).textTheme.labelSmall),
                  const SizedBox(height: 10),
                  Text('RS.112',style: Theme.of(context).textTheme.headlineSmall),
                ],
              ),
            ),
            Positioned(right: 0,bottom: 25,child: Image.asset('assets/icons/rating_label (1).png'))
          ],
        ),
      ),
    );
  }
}
