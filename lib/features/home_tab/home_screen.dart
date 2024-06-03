import 'package:flutter/material.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: Dimensions.width34+4,
                width: Dimensions.width34+4,
                color: AppColors.avatarContainerColor,
                child: Image.asset(
                  'assets/images/avatar.png',
                  fit: BoxFit.contain,
                  width: 20,
                  height: 20,

                ),
              ),
              SizedBox(width: 15,),
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
              )
            ],
          ),
        ],
      ),
    );
  }
}
