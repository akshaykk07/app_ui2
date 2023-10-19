import 'package:flutter/material.dart';

class plist extends StatelessWidget {
  final String one;
  final String time;
  final String title;
  final String sub;

  plist(
      {super.key,
      required this.one,
      required this.time,
      required this.title,
      required this.sub});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade300, width: 2)),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  one,
                  style: TextStyle(fontSize: 15, color: Colors.grey),
                ),
                Text(
                  time,
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(title,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Icon(Icons.warning_amber),
                SizedBox(
                  width: 10,
                ),
                Text(sub,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500)),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
