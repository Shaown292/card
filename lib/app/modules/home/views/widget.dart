import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String images;
  final Color backgroundColor;

  const CustomCard({
    super.key,
    required this.images,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: (MediaQuery.of(context).size.width / 4) - 4,
      child: Card(
        color: backgroundColor,
        shadowColor: backgroundColor,
        elevation: 60,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(images),
            ),
          ),
        ),
      ),
    );
  }
}
