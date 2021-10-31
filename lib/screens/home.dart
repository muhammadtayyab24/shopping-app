import 'package:flutter/material.dart';
import 'package:shopping/category_data/mobiles.dart';
import 'package:shopping/screens/profile_view.dart';
import 'package:shopping/screens/tabs/fav_tab.dart';
import 'package:shopping/screens/tabs/home_tab.dart';
import 'package:shopping/screens/tabs/profile_tab.dart';
import 'package:shopping/screens/tabs/search.dart';
import 'package:shopping/widgets/bottom_bar.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late PageController _tabpageController;
  int _selectedTab = 0;

  @override
  void initState() {
    _tabpageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _tabpageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView(
                controller: _tabpageController,
                onPageChanged: (num) {
                  setState(() {
                    _selectedTab = num;
                  });
                },
                children: [
                  HomeTab(),
                  SearchTab(),
                  Profile(),
                  MobileData(),
                ],
              ),
            ),
            BottomTabs(
              selectedTab: _selectedTab,
              tabpressed: (num) {
                _tabpageController.animateToPage(num,
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeOutCubic);
              },
            ),
          ],
        ),
      ),
    );
  }
}
