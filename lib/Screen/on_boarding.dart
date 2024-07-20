import 'package:flutter/material.dart';
import 'package:medical_store/Screen/login_screen.dart';
import 'package:medical_store/utils/constants/colors.dart';
import 'package:medical_store/utils/constants/size.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white),

      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace),
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 35,right: 24,top: 85),
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo/OnBoarding.png'),fit: BoxFit.cover),
              )
            ),
            const SizedBox(height: TSize.spaceBtwSection),

            Column(
                children: [
              Text('View and buy',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 22)),
              Text('Medicine online',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 23)),
                  const SizedBox(height: TSize.spaceBtwSection),
                  Text('There are many places you can',style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: TSize.sm,),
                  Text(' learn about medicines, how they can help ',style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(height: TSize.sm,),
                  Text('any unwanted effects they',style: Theme.of(context).textTheme.bodySmall),

                ]
            ),
            const SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(onPressed: (){}, child: Text('Skip',style: Theme.of(context).textTheme.bodySmall)),
                TextButton(onPressed: (){
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (_) => const LoginScreen())
                  );
                }, child: const Text('Next',style: TextStyle(color: TColors.buttonPrimary))),
              ],
            )
          ],
        ),
        ),
      ),
    );
  }
}
