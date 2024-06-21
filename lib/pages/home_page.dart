import 'package:flutter/material.dart';
import 'package:food_recipe_flutter/widgets/category_list.dart';
import 'package:food_recipe_flutter/widgets/home_appbar.dart';
import 'package:food_recipe_flutter/widgets/home_searchBar.dart';
import 'package:food_recipe_flutter/widgets/quick_and_fast_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String currentCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/explore.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const CatetoryList(),
                const SizedBox(height: 20),
                const QuickAndFastList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
