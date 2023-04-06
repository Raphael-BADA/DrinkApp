import 'package:flutter/material.dart';
class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({super.key});

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return  Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 231, 224, 224).withOpacity(0.8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.home,
                      size: 45,
                    ),
                    Icon(
                      Icons.search,
                      size: 45,
                    ),
                    Icon(
                      Icons.favorite,
                      size: 45,
                    ),
                    Icon(
                      Icons.person,
                      size: 45,
                    ),
                  ],
                ),
              ));
  }
}