import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../features/home_tab/home_screen.dart';
import '../utils/constants/colors.dart';
import '../utils/constants/dimensions.dart';
import '../utils/constants/fonts_sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  int selectedIndex = 0;


  List pages = [
    const HomeTabScreen(),
    const Center(child: Text('Wallet Screen'),),
    const Center(child: Text('Transaction Screen'),),
    const Center(child: Text('Profile Screen'),),
  ];

  late List<String> pageTitles;

  @override
  void initState() {
    super.initState();
    updateUser();
  }

  void updateUser() {
    pageTitles = [
      '',
      'Wallet',
      'Transactions',
      'Profile'
    ];
  }

  void onTapNav(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      // appBar: AppBar(
      //   title: Text(
      //     pageTitles[selectedIndex],
      //   ),
      //   surfaceTintColor: Colors.white,
      //   // titleSpacing: 0,
      //   centerTitle: true,
      //   titleTextStyle: Fonts.fontInter(
      //       fontWeight: FontWeight.w400,
      //       fontSize: Dimensions.font20,
      //       letterSpacing: 0.32,
      //       color: AppColors.cardColor
      //   ),
      //   leading: Container(
      //     margin: EdgeInsets.all(Dimensions.height10),
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       crossAxisAlignment: CrossAxisAlignment.center,
      //       children: [
      //         ClipRRect(
      //           borderRadius: BorderRadius.circular(Dimensions.radius30),
      //           child: Container(
      //             height: Dimensions.width34+4,
      //             width: Dimensions.width34+4,
      //             color: AppColors.avatarContainerColor,
      //             child: Image.asset(
      //                 'assets/images/avatar.png',
      //               fit: BoxFit.contain,
      //               width: 20,
      //               height: 20,
      //
      //             ),
      //           ),
      //         ),
      //         SizedBox(width: 5,),
      //         Column(
      //           children: [
      //             Text('Hi, Esther Bukola', style: Fonts.fontInter(
      //                 fontWeight: FontWeight.w400,
      //                 fontSize: Dimensions.font12,
      //                 letterSpacing: 0.32,
      //                 color: AppColors.cardColor
      //             ),),
      //             Text('Good Evening', style: Fonts.fontInter(
      //                 fontWeight: FontWeight.w700,
      //                 fontSize: Dimensions.font16-1,
      //                 letterSpacing: 0.32,
      //                 color: AppColors.cardColor
      //             ),)
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      //   actions: [
      //       Container(
      //         height: Dimensions.height45,
      //         width: Dimensions.width45,
      //         color: AppColors.qrCodeContainerColor,
      //       )
      //   ],
      // ),
      body: SafeArea(
          child: pages[selectedIndex]
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: AppColors.homeIconColor,
        unselectedItemColor: AppColors.greyIconColor,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: selectedIndex,
        iconSize: Dimensions.icon24,
        onTap: onTapNav,
        items: [
          selectedIndex == 0 ?
          const BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
            backgroundColor: AppColors.homeIconColor,
          ) : const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: AppColors.greyIconColor,
          ),

          selectedIndex == 1 ?
          const BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_rounded),
            label: 'Home',
            backgroundColor: AppColors.homeIconColor,

          ) : const BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined),
            label: 'Home',
            backgroundColor: AppColors.greyIconColor,

          ),

          selectedIndex == 2 ?
          const BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Home',
            backgroundColor: AppColors.homeIconColor,
          ) : const BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.square_grid_2x2),
            label: 'Home',
            backgroundColor: AppColors.greyIconColor,
          ),

          selectedIndex == 3 ?
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Home',
            backgroundColor: AppColors.homeIconColor,
          ) : const BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: 'Home',
            backgroundColor: AppColors.greyIconColor,
          ),
        ],

      ),
    );
  }
}