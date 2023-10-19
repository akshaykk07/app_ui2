import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class circle extends StatelessWidget {
  final String img;
  final bool online=false;

  const circle({super.key, required this.img,required online});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        backgroundImage: AssetImage(img),
        radius: 28,
      ),
      online==false?
      Positioned(
          left: 40,
          top: 3,
          child: Container(
            height: 10,
            width: 10,
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.green),
          )):SizedBox()
    ]);
  }
}
