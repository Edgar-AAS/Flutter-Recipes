import 'package:flutter/material.dart';
import 'package:food_recipe_flutter/constants.dart';
import 'package:food_recipe_flutter/pages/home_page.dart';
import 'package:iconsax/iconsax.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var _currentTab = 0;

  final List<Widget> _pageList = [
    const HomePage(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: _pageList[_currentTab],
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTab = 0;
                });
              },
              child: Column(
                children: [
                  Icon(
                    _currentTab == 0 ? Iconsax.home5 : Iconsax.home,
                    color: _currentTab == 0 ? kPrimaryColor : Colors.grey,
                  ),
                  Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 14,
                      color: _currentTab == 0 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTab = 1;
                });
              },
              child: Column(
                children: [
                  Icon(
                    _currentTab == 1 ? Iconsax.heart5 : Iconsax.heart,
                    color: _currentTab == 1 ? kPrimaryColor : Colors.grey,
                  ),
                  Text(
                    'Favorites',
                    style: TextStyle(
                      fontSize: 14,
                      color: _currentTab == 1 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTab = 2;
                });
              },
              child: Column(
                children: [
                  Icon(
                    _currentTab == 2 ? Iconsax.calendar_25 : Iconsax.calendar_2,
                    color: _currentTab == 2 ? kPrimaryColor : Colors.grey,
                  ),
                  Text(
                    'Meal Plan',
                    style: TextStyle(
                      fontSize: 14,
                      color: _currentTab == 2 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  _currentTab = 3;
                });
              },
              child: Column(
                children: [
                  Icon(
                    _currentTab == 3 ? Iconsax.setting5 : Iconsax.setting,
                    color: _currentTab == 3 ? kPrimaryColor : Colors.grey,
                  ),
                  Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 14,
                      color: _currentTab == 3 ? kPrimaryColor : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
