import 'package:flutter/material.dart';
import 'package:paystreet/reusable_widgets/shadow_container.dart';
import 'package:paystreet/utils/formatters/formatter.dart';

import '../../utils/constants/colors.dart';
import '../../utils/constants/dimensions.dart';
import '../../utils/constants/fonts_sizes.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({super.key});

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  bool isBalanceVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Dimensions.width15),
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
                    SizedBox(width: Dimensions.width8-3,),
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
                  child: Image.asset('assets/icons/qrcode.png', scale: 5/3,),
                )
              ],
            ),

            SizedBox(height: Dimensions.height10,),

            // balance card
            Card(
              color: AppColors.cardColor,
              child: Padding(
                padding: EdgeInsets.all(Dimensions.height10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Current Balance',
                          style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font12,
                              letterSpacing: 0.32,
                              color: Colors.white
                          ),),
                        SizedBox(width: Dimensions.width8,),
                        InkWell(
                          onTap: (){
                            setState(() {
                              isBalanceVisible = !isBalanceVisible;
                            });
                          },
                          child: Icon(
                            isBalanceVisible ? Icons.visibility_outlined : Icons.visibility_off_outlined,
                            color: Colors.white,
                            size: Dimensions.icon16,
                          ),
                        )
                      ],
                    ),
                    Text( isBalanceVisible ? PayStreetFormatter.currencyFormatter(7860.00) : '********',
                      style: Fonts.fontPrompt(
                          fontWeight: FontWeight.w400,
                          fontSize: Dimensions.font20+10,
                          letterSpacing: 0.32,
                          color: Colors.white
                      ),),

                    SizedBox(height: Dimensions.height20,),

                    Row(
                      children: [
                        Expanded(
                          child: Card(
                            color: AppColors.innerCardColor,
                            child: Padding(
                              padding: EdgeInsets.all(Dimensions.height8),
                              child: Column(
                                children: [
                                  Text('Fund Account', style: Fonts.fontPrompt(
                                  fontWeight: FontWeight.w400,
                                  fontSize: Dimensions.font12,
                                  letterSpacing: 0.32,
                                  color: Colors.white
                              ),),
                                  Icon(Icons.file_download_outlined, size: Dimensions.icon22, color: Colors.white,)
                                ],
                              ),
                            ),
                          )
                        ),
                        Expanded(
                          child: Card(
                            color: AppColors.innerCardColor,
                            child: Padding(
                              padding: EdgeInsets.all(Dimensions.height8),
                              child: Column(
                                children: [
                                  Text('Internal Transfer', style: Fonts.fontPrompt(
                                      fontWeight: FontWeight.w400,
                                      fontSize: Dimensions.font12,
                                      letterSpacing: 0.32,
                                      color: Colors.white
                                  ),),
                                  Icon(Icons.arrow_forward, color: Colors.white, size: Dimensions.icon22,)
                                ],
                              ),
                            ),
                          )
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: Dimensions.height15,),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // bill section
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bill Payments', style: Fonts.fontPrompt(
                            fontWeight: FontWeight.w400,
                            fontSize: Dimensions.font16,
                            letterSpacing: 0.32,
                            color: AppColors.textColor
                        ),
                        ),

                        Icon(Icons.arrow_forward_ios, color: AppColors.iconColor, size: Dimensions.icon20,)
                      ],
                    ),

                    SizedBox(height: Dimensions.height8,),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: Dimensions.width8-3, vertical: Dimensions.height10),
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              // buy airtime
                              Container(
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_1,
                                      ),
                                      child: Image.asset('assets/icons/trend.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Buy Airtime', style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),

                              // buy data
                              Container(
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_2,
                                      ),
                                      child: Image.asset('assets/icons/network.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Buy Data', style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),

                              // cable tv
                              Container(
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_3,
                                      ),
                                      child: Image.asset('assets/icons/cable.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Cable TV', style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),

                              // electricity
                              Container(
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_4,
                                      ),
                                      child: Image.asset('assets/icons/electricity.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Electricity', style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),
                            ],
                          ),

                          SizedBox(height: Dimensions.height20,),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // agent
                              Container(
                                width: Dimensions.width45+30,
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_5,
                                      ),
                                      child: Image.asset('assets/icons/agent.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Become an Agent', textAlign: TextAlign.center, style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),

                              // education
                              Container(
                                width: Dimensions.width45+30,
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.transactionIconContainerColor_2,
                                      ),
                                      child: Image.asset('assets/icons/education.png', scale: 5/2,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Education Payment', textAlign: TextAlign.center, style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),

                              // withdraw
                              Container(
                                width: Dimensions.width45+30,
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_6,
                                      ),
                                      child: Image.asset('assets/icons/withdraw.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Withdraw Funds', textAlign: TextAlign.center, style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),

                              // ask 4 pay
                              Container(
                                width: Dimensions.width45+30,
                                padding: EdgeInsets.only(top: Dimensions.height4, left: Dimensions.width8, right: Dimensions.width8),
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.2),
                                      spreadRadius: 0,
                                      blurRadius: 7,
                                      offset: const Offset(0, 3), // Adjust the offset
                                    ),
                                  ],
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                  color: Colors.white,
                                ),
                                child: Column(
                                  children: [
                                    Container(
                                      width: Dimensions.width40+3,
                                      height: Dimensions.height40+3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                                        color: AppColors.iconContainerColor_7,
                                      ),
                                      child: Image.asset('assets/icons/ask.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/3,),
                                    ),
                                    SizedBox(height: Dimensions.height4,),
                                    Text('Ask4 Pay', textAlign: TextAlign.center, style: Fonts.fontPrompt(
                                        fontWeight: FontWeight.w400,
                                        fontSize: Dimensions.font10,
                                        letterSpacing: 0.32,
                                        color: AppColors.textColor
                                    ),)
                                  ],
                                ),

                              ),
                            ],
                          ),
                        ],
                      ),
                    ),

                    // transaction section
                    Row(
                      children: [
                        Text('Transactions',
                          style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w500,
                              fontSize: Dimensions.font16,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                        Text('See All',
                          style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font12,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                      ],
                    ),

                    SizedBox(height: Dimensions.height10,),

                    ShadowContainer(
                        padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: ListTile(
                          leading: Container(
                            width: Dimensions.width40+3,
                            height: Dimensions.height40+3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                              color: AppColors.transactionIconContainerColor_1,
                            ),
                            child: Image.asset('assets/icons/shopping.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/2,),
                          ),
                          title: Text('Shopping', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font14,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                          subtitle: Text('12 May 2023, 9:00', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font12,
                              letterSpacing: 0.32,
                              color: AppColors.smallTextColor
                          ),),
                          trailing: Text('-${PayStreetFormatter.currencyFormatter(500.00)}', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font20,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                        )
                    ),

                    ShadowContainer(
                        padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: ListTile(
                          leading: Container(
                            width: Dimensions.width40+3,
                            height: Dimensions.height40+3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                              color: AppColors.transactionIconContainerColor_2,
                            ),
                            child: Image.asset('assets/icons/transfer.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/2,),
                          ),
                          title: Text('Transfer', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font14,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                          subtitle: Text('10 May 2023, 10:45', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font12,
                              letterSpacing: 0.32,
                              color: AppColors.smallTextColor
                          ),),
                          trailing: Text('+${PayStreetFormatter.currencyFormatter(2800.00)}', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font20,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                        )),

                    ShadowContainer(
                        padding: EdgeInsets.only(top: Dimensions.height10, bottom: Dimensions.height10),
                        child: ListTile(
                          leading: Container(
                            width: Dimensions.width40+3,
                            height: Dimensions.height40+3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius8)),
                              color: AppColors.transactionIconContainerColor_3,
                            ),
                            child: Image.asset('assets/icons/ticket.png',width: Dimensions.width8, height: Dimensions.height4, scale: 5/2,),
                          ),
                          title: Text('Concert Ticket', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font14,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                          subtitle: Text('9 May 2023, 19:30', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font12,
                              letterSpacing: 0.32,
                              color: AppColors.smallTextColor
                          ),),
                          trailing: Text('-${PayStreetFormatter.currencyFormatter(170.00)}', style: Fonts.fontPrompt(
                              fontWeight: FontWeight.w400,
                              fontSize: Dimensions.font20,
                              letterSpacing: 0.32,
                              color: AppColors.textColor
                          ),),
                        )),
                    SizedBox(height: Dimensions.height8,)
                  ],
                ),
              ))

          ],
        ),
      ),
    );
  }
}
