import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  final Color? color;
  final String? entry;
  const Items({super.key, this.color, this.entry});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      color: color ?? Colors.white,
      child:  Center(child: Text(entry ?? "")),
    );
  }
}
