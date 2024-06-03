import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/dimensions.dart';
import '../../utils/constants/fonts_sizes.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(Dimensions.radius30),
                      child: Container(
                        height: Dimensions.width34+4,
                        width: Dimensions.width34+4,
                        color: AppColors.avatarContainerColor,
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Image.asset(
                            'assets/images/avatar.png',
                            fit: BoxFit.contain,
                            width: 20,
                            height: 20,

                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Column(
                      children: [
                        Text('Hi, Esther Bukola', style: Fonts.fontInter(
                            fontWeight: FontWeight.w400,
                            fontSize: Dimensions.font12,
                            letterSpacing: 0.32,
                            color: AppColors.cardColor
                        ),),
                        Text('Good Evening', style: Fonts.fontInter(
                            fontWeight: FontWeight.w700,
                            fontSize: Dimensions.font16-1,
                            letterSpacing: 0.32,
                            color: AppColors.cardColor
                        ),)
                      ],
                    ),
                  ],
                ),

                Container(
                  height: Dimensions.height45,
                  width: Dimensions.width45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimensions.radius30),
                    color: AppColors.qrCodeContainerColor,
                  ),
                  // child: ,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
