import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:medical_store/Screen/home_screen.dart';
import 'package:medical_store/utils/constants/colors.dart';
import 'package:medical_store/utils/constants/size.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:    SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSize.defaultSpace*1.2),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 130,),
                    child:Center(
                        child: ClipOval(
                            child: Container(
                                width: 100.0,
                                height: 100.0,
                                decoration: const BoxDecoration(
                                    color: TColors.light,
                                    image: DecorationImage(image: AssetImage('assets/logo/plus.png'))))))),
                  const SizedBox(height: TSize.spaceBtwItem),
                  Text('Quick Medical',style: Theme.of(context).textTheme.headlineMedium),

                ],
              ),

              const SizedBox(height: TSize.spaceBtwItem *6),

              Text('Please Enter your Mobile Number',style: Theme.of(context).textTheme.bodySmall),
              const SizedBox(height: TSize.sm),
              Text('to Login/Sign Up',style: Theme.of(context).textTheme.bodySmall),

              const SizedBox(height: TSize.spaceBtwSection),

               IntlPhoneField(
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),

              const SizedBox(height: TSize.spaceBtwSection),

              SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomeScreen())
                    );
                  },
                  style: ElevatedButton.styleFrom(backgroundColor: TColors.primary,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                      child: const Text('CONTINUE')))
            ],
          ),
        ),
      ),
    );
  }
}
