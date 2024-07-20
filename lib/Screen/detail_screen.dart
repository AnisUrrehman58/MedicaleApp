import 'package:flutter/material.dart';
import 'package:medical_store/Screen/home_screen.dart';
import 'package:medical_store/utils/constants/colors.dart';
import 'package:medical_store/utils/constants/size.dart';
import 'package:medical_store/utils/helpers/helper_functions.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final dark = THelperFunctions.isDarkMode(context);
    return  Scaffold(
      // backgroundColor: const Color(0xffF7FBFF),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const HomeScreen()));
        }, icon: Icon(Icons.arrow_back,color:  dark? TColors.white : TColors.dark,)),
        actions:  [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
             IconButton(onPressed: (){}, icon: Icon(Icons.notification_add_outlined,color: dark? TColors.white : TColors.dark)),
             IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined,color: dark? TColors.white : TColors.dark))]))]),


      /// Body
      body:  SingleChildScrollView(
        padding: const EdgeInsets.only(left: TSize.defaultSpace,right: TSize.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            /// HeadLine
            Text('Sugar Free Gold Low Calories',style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: height *0.01),
            Text('Esam mollies metes non purus ',style: Theme.of(context).textTheme.labelMedium),
            SizedBox(height: height *0.01),

            Container(
              height: height * 0.2,
              width: width *10,
              decoration:  BoxDecoration(
                border: Border.all(color: TColors.grey.withOpacity(0.3)),
                borderRadius: BorderRadius.circular(TSize.sm),
                color: TColors.white,
                image: const DecorationImage(image: AssetImage('assets/Banners/Sugar.png'))
              ),
            )
          ],
        ),


      ) ,

    );
  }
}
