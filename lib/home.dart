import 'package:appuit3/widgets/circle.dart';
import 'package:appuit3/widgets/cont.dart';
import 'package:appuit3/widgets/textbox.dart';
import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink[50],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: const circle(
                img: "assets/girl1.jpeg",
                online: false,
              ),
              title: const Text(
                "Hi, Kira!",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
              ),
              trailing: Stack(children: [
                const Icon(
                  Icons.notifications,
                  color: Colors.black,
                  size: 30,
                ),
                Positioned(top: 3,right: 5,
                  child: Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(border: Border.all(width: 1, color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.redAccent),
                  ),
                )
              ]),
            ),
            const SizedBox(
              height: 35,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Tasks for today:",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow.shade700,
                  ),
                  const Text(
                    "5 available",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const text(),
            const SizedBox(
              height: 25,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Text(
                    "Last connections",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: Text(
                    "See all",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const circle(img: "assets/girl2.jpg", online: true),
                  const circle(
                    img: "assets/men1.jpg",
                    online: true,
                  ),
                  const circle(
                    img: "assets/girl3.jpg",
                    online: true,
                  ),
                  const circle(
                    img: "assets/men2.png",
                    online: false,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 25),
                    child: CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.grey[200],
                      child: const Text(
                        "+5",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            cont(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            label: "home",
            icon: Icon(
              Icons.home,
              color: Colors.black,
              size: 30,
            )),
        BottomNavigationBarItem(
            label: "home",
            icon: Icon(
              Icons.drive_file_move_sharp,
              size: 30,
              color: Colors.grey,
            )),
        BottomNavigationBarItem(
            label: "list",
            icon: Icon(
              Icons.list_alt,
              color: Colors.grey,
              size: 30,
            )),
        BottomNavigationBarItem(
            label: "home",
            icon: Icon(
              Icons.date_range,
              color: Colors.grey,
              size: 30,
            )),
      ]),
    );
  }
}
