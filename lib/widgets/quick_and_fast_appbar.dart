import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class QuickAndFastAppBar extends StatelessWidget {
  const QuickAndFastAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).hoverColor,
            fixedSize: const Size(55, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          icon: const Icon(CupertinoIcons.chevron_back),
        ),
        const Spacer(),
        const Text(
          'Quick & Fast',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).hoverColor,
            fixedSize: const Size(55, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          icon: const Icon(Iconsax.notification),
        ),
      ],
    );
  }
}
