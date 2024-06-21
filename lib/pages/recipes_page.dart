import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe_flutter/models/food.dart';
import 'package:food_recipe_flutter/widgets/food_counter.dart';
import 'package:iconsax/iconsax.dart';

class RecipesPage extends StatefulWidget {
  final Food food;
  const RecipesPage({super.key, required this.food});

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  var _currentNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SafeArea(
        child: Container(
          color: Theme.of(context).scaffoldBackgroundColor,
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                flex: 5,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Theme.of(context).primaryColor),
                  onPressed: () {},
                  child: const Text(
                    'Start Cooking',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                child: IconButton(
                  onPressed: () {},
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    shape: CircleBorder(
                      side: BorderSide(
                        color: Colors.grey.shade500,
                        width: 1.5,
                      ),
                    ),
                  ),
                  icon: Icon(
                    widget.food.isLiked ? Iconsax.heart5 : Iconsax.heart,
                    size: 25,
                    color:
                        widget.food.isLiked ? Colors.red : Colors.grey.shade800,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Theme.of(context)
          .scaffoldBackgroundColor, // Escolha a cor desejada aqui
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.width - 50,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                widget.food.image,
                fit: BoxFit.cover,
              ),
            ),
            automaticallyImplyLeading: false,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    fixedSize: const Size(50, 50),
                  ),
                  icon: const Icon(CupertinoIcons.chevron_back,
                      color: Colors.black),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Theme.of(context).cardColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    fixedSize: const Size(50, 50),
                  ),
                  icon: const Icon(Iconsax.notification, color: Colors.black),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Iconsax.flash_1,
                        size: 18,
                        color: Colors.grey.shade800,
                      ),
                      Text(
                        '${widget.food.cal} cal',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                        ),
                      ),
                      const Text(
                        ' . ',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      Icon(
                        Iconsax.clock,
                        size: 18,
                        color: Colors.grey.shade800,
                      ),
                      Text(
                        '${widget.food.time} Min',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade800,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Iconsax.star1,
                        color: Colors.amber.shade600,
                        size: 25,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '${widget.food.rate}/5',
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Text(
                        '(${widget.food.reviews} Reviews)',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade700,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Ingredients',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "How many servings?",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey.shade800,
                            ),
                          )
                        ],
                      ),
                      const Spacer(),
                      FoodCounter(
                        currentCounter: _currentNumber,
                        onRemove: () {
                          setState(() {
                            if (_currentNumber != 1) {
                              _currentNumber--;
                            }
                          });
                        },
                        onAdd: () {
                          setState(() {
                            _currentNumber++;
                          });
                        },
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                      ingredientRow(widget.food.image, "Ramen Noodles", "400g"),
                      Divider(height: 10, color: Colors.grey.shade300),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget ingredientRow(String image, String name, String quantity) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.fill,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Text(
          name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          quantity,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey.shade800,
          ),
        ),
      ],
    );
  }
}
