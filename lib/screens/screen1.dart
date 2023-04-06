import 'package:drinkapp_by_r/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const.dart';
import '../widgets/widgets.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: ListView(
                children: [
                  MyAppBar(
                    destination: Screen2(),
                    color: Colors.black,
                  ),
                  DrinkCard(
                    name: 'FANTA',
                    imagePath: 'assets/fanta.png',
                    color: orange,
                  ),
                  DrinkCard(
                    name: 'SPRITE',
                    imagePath: 'assets/sprite.png',
                    color: yellow,
                  ),
                  DrinkCard(
                    name: 'COCA',
                    imagePath: 'assets/coca.png',
                    color: red,
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
          MyBottomNavBar(),
        ],
      ),
    );
  }
}
