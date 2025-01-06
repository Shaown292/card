import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: (MediaQuery.of(context).size.width / 4) - 4 ,
      child: Card(
        color: Colors.greenAccent,
        shadowColor: Colors.red,
        elevation: 20,
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              image: DecorationImage(image: NetworkImage("https://dfstudio-d420.kxcdn.com/wordpress/wp-content/uploads/2019/06/digital_camera_photo-980x653.jpg"))
          ),
        ),
      ),
    );
  }
}
