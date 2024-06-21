import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'what are you \ncooking today?',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            height: 1,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Iconsax.notification),
          style: IconButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              backgroundColor: Theme.of(context).hoverColor,
              fixedSize: const Size(55, 55)),
        )
      ],
    );
  }
}
