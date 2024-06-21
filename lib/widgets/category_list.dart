import 'package:flutter/material.dart';
import 'package:food_recipe_flutter/constants.dart';
import 'package:food_recipe_flutter/models/category.dart';

class CatetoryList extends StatefulWidget {
  const CatetoryList({
    super.key,
  });

  @override
  State<CatetoryList> createState() => _CatetoryListState();
}

class _CatetoryListState extends State<CatetoryList> {
  String currentCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(categoryList.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                currentCategory = categoryList[index];
              });
            },
            child: Container(
              decoration: BoxDecoration(
                  color: currentCategory == categoryList[index]
                      ? kPrimaryColor
                      : Theme.of(context).focusColor,
                  borderRadius: BorderRadius.circular(15.0)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              margin: const EdgeInsets.only(right: 20),
              child: Text(
                categoryList[index],
                style: TextStyle(
                  color: currentCategory == categoryList[index]
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
