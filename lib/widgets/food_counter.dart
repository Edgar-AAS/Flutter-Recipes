import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class FoodCounter extends StatelessWidget {
  final int currentCounter;
  final Function() onAdd;
  final Function() onRemove;

  const FoodCounter(
      {super.key,
      required this.currentCounter,
      required this.onRemove,
      required this.onAdd});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade300,
          width: 2.5,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: onRemove,
            icon: const Icon(Iconsax.minus),
          ),
          const SizedBox(width: 10),
          Text(
            '$currentCounter',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 10),
          IconButton(
            onPressed: onAdd,
            icon: const Icon(Iconsax.add),
          ),
        ],
      ),
    );
  }
}
