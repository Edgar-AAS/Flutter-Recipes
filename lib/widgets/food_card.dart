import 'package:flutter/material.dart';
import 'package:food_recipe_flutter/models/food.dart';
import 'package:food_recipe_flutter/pages/recipes_page.dart';
import 'package:iconsax/iconsax.dart';

class FoodCard extends StatelessWidget {
  final Food food;

  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => RecipesPage(food: food))),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(food.image), fit: BoxFit.fill),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  food.name,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(
                      Iconsax.flash_1,
                      size: 18,
                      color: Colors.grey,
                    ),
                    Text(
                      '${food.cal} cal',
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
                      '${food.time} Min',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Iconsax.star1,
                      color: Colors.amber.shade600,
                      size: 20,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '${food.rate}/5',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      '(${food.reviews} Reviews)',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade400,
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
                icon: food.isLiked
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
  }
}
