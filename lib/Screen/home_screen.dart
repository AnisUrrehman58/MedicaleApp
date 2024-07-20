import 'package:flutter/material.dart';
import 'package:medical_store/utils/constants/colors.dart';
import 'package:medical_store/utils/constants/size.dart';

import '../CustomWidgets/categories_card.dart';
import '../CustomWidgets/vertical_card.dart';
import '../utils/grid_layout.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: TSize.spaceBtwSection*1.5,),
              height: height *.32,
              width: width * 10,
              decoration: const BoxDecoration(
                  color: TColors.primary,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30))
              ),
              child:   Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: const CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/icons/profile.jpg')),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        InkWell(onTap: (){},child: Image.asset('assets/icons/bell.png')),
                        const SizedBox(width: 30),
                        InkWell(onTap: (){},child: Image.asset('assets/icons/card.png')),
                      ],
                    ),
                  ),
                  const SizedBox(height: TSize.spaceBtwItem),

                  Padding(
                    padding: const EdgeInsets.only(left: TSize.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi, Anis',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: TColors.white,fontSize: 23)),
                        Text('Welcome to Quick Medical Store',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: TColors.white)),

                        const SizedBox(height: 20),

                        Container(
                          margin: const EdgeInsets.only(right: TSize.defaultSpace,),
                          child: TextFormField(
                            decoration:  InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffFFFFFF),
                              hintText: 'Search Medicine & Healthcare Products',
                              hintStyle: Theme.of(context).textTheme.bodySmall,
                              prefixIcon: const Icon(Icons.search),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: TColors.light),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide: const BorderSide(color: TColors.light)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: height * 0.04),

            Padding(
              padding:  const EdgeInsets.all(TSize.defaultSpace),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Top Categories',style: Theme.of(context).textTheme.titleLarge),

                    SizedBox(height: height *0.02),


                    /// Horizontal Categories
                     const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoriesCard(imageUrl: 'assets/Categories/dental.jpg', title: 'Dental'),
                          CategoriesCard(imageUrl: 'assets/Categories/wellness.webp', title: 'Wellness'),
                          CategoriesCard(imageUrl: 'assets/Categories/homeo.jpg', title: 'Homeo'),
                          CategoriesCard(imageUrl: 'assets/Categories/eyeCare.jpg', title: 'Eye care'),
                        ],
                      ),
                    ),

                    /// Banner
                    Container(
                      margin: const EdgeInsets.only(top: TSize.defaultSpace),
                      height: height *0.2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(TSize.md),
                        image: const DecorationImage(image: AssetImage('assets/Banners/home_offer_image_section.png'),fit: BoxFit.cover),
                        color: Colors.red
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Deal of the Day',style: Theme.of(context).textTheme.titleLarge),
                        TextButton(onPressed: (){}, child: const Text('More',style: TextStyle(color: TColors.primary)))
                      ],
                    ),

                    const SizedBox(height: TSize.spaceBtwItem/2),


                    /// Vertical Card
                    TGridLayout(itemCount: 6,itemBuilder: (_, index) => const VerticalCards()),
                  ],
                ))),

          ],
        ),
      ),
    );
  }
}


