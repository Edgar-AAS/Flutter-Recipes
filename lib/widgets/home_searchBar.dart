import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 205, 205, 205),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: const Row(
        children: [
          Icon(Iconsax.search_normal),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              cursorColor: Colors.black,
              decoration: InputDecoration(
                  border: InputBorder.none, hintText: 'Search any recipes'),
            ),
          )
        ],
      ),
    );
  }
}
