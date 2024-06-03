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
    updateTitle();
  }

  void updateTitle() {
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
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ) : const BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),

          selectedIndex == 1 ?
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/wallet.png', scale: 6/3, color: AppColors.homeIconColor,),
            label: 'Wallet',
          ) : BottomNavigationBarItem(
            icon: Image.asset('assets/icons/wallet.png', scale: 5/2, color: AppColors.greyIconColor,),
            label: 'Wallet',
          ),

          selectedIndex == 2 ?
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/transactions.png', scale: 6/3, color: AppColors.homeIconColor,),
            label: 'Transactions',
          ) : BottomNavigationBarItem(
            icon: Image.asset('assets/icons/transactions.png', scale: 5/2, color: AppColors.greyIconColor,),
            label: 'Transactions',
          ),

          selectedIndex == 3 ?
          BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png', scale: 6/3, color: AppColors.homeIconColor,),
            label: 'Profile',
          ) : BottomNavigationBarItem(
            icon: Image.asset('assets/icons/profile.png', scale: 5/2, color: AppColors.greyIconColor,),
            label: 'Profile',
          ),
        ],

      ),
    );
  }
}