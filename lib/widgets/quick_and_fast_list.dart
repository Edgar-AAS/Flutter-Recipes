import 'package:flutter/material.dart';
import 'package:food_recipe_flutter/models/food.dart';
import 'package:food_recipe_flutter/pages/quick_foods_page.dart';
import 'package:food_recipe_flutter/pages/recipes_page.dart';
import 'package:iconsax/iconsax.dart';

class QuickAndFastList extends StatelessWidget {
  const QuickAndFastList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Quick & Fast',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuickFoodsPage(),
                    ));
              },
              child: const Text('View all'),
            ),
          ],
        ),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(foods.length, (index) {
              return GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RecipesPage(food: foods[index]),
                  ),
                ),
                child: Container(
                  margin: const EdgeInsets.only(right: 10.0),
                  width: 200,
                  child: Stack(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(foods[index].image),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            foods[index].name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              const Icon(
                                Iconsax.flash_1,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                '${foods[index].cal} cal',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                              const Text(
                                ' . ',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              const Icon(
                                Iconsax.clock,
                                size: 18,
                                color: Colors.grey,
                              ),
                              Text(
                                '${foods[index].time} Min',
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 10,
                        child: IconButton(
                          onPressed: () {},
                          style: IconButton.styleFrom(
                            backgroundColor: Colors.white,
                            fixedSize: const Size(40, 40),
                          ),
                          icon: foods[index].isLiked
                              ? const Icon(
                                  Iconsax.heart5,
                                  color: Colors.red,
                                  size: 20,
                                )
                              : const Icon(
                                  Iconsax.heart,
                                  size: 20,
                                ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ],
    );
  }
}
