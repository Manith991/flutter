import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("Discount", style: TextStyle(fontSize: 26,fontWeight: FontWeight.w500)),
        Stack(
          clipBehavior: Clip.none,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 40,
                width: 40,
                color: Colors.grey.shade200,
                child: const Icon(Icons.shopping_bag_outlined),
              ),
            ),
            Positioned(
              top: -6,
              right: -6,
              child: SizedBox(
                width: 20,
                height: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: const Text(
                    "3",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}