import 'package:appuit3/widgets/projectl.dart';
import 'package:flutter/material.dart';

class cont extends StatelessWidget {
  const cont({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      decoration:  const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(20), topLeft: Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25,right: 25,top: 20),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Column(
            children: [ const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Active projects",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                Text("see all", style: TextStyle(fontSize: 20, color:Colors.grey,fontWeight: FontWeight.w500)),
              ],
            ),
              SizedBox(height: 10,),
              Expanded(
                child: ListView(children:  [
                  // Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Text(
                  //       "Active projects",
                  //       style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                  //     ),
                  //     Text("see all", style: TextStyle(fontSize: 20, color:Colors.grey,fontWeight: FontWeight.w500)),
                  //   ],
                  // ),
                  // SizedBox(height: 10,),
                  plist(one: "Numero 10", time: "4h", title: "Blog and social posts", sub: "Deadline is today"),
                  plist(one: "Grace Aroma", time:"7d", title:"New capmain", sub: "Deadline is today"),
                  plist(one: "Grace Aroma", time:"7d", title:"New capmain", sub: "Deadline is today")
                ]),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
