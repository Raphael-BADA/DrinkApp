import 'package:drinkapp_by_r/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../const.dart';
import '../widgets/widgets.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light));
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 25.0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.55,
                    decoration: BoxDecoration(
                        color: orange,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40),
                        )),
                    child: SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25.0),
                        child: Column(
                          children: [
                            MyAppBar(
                              destination: Screen1(),
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 45,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width * 0.7,
                              child: Image(
                                  fit: BoxFit.cover,
                                  image: AssetImage('assets/drinks.png')),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: (MediaQuery.of(context).size.width * 0.5) - 45,
                  bottom: 6,
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: orange,
                      border: Border.all(color: Colors.white, width: 3),
                      //  color: orange,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Center(
                        child: Text(
                          '- 1 +',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 26,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 25.0,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Best Juice at R Drinks',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        '🌟🌟🌟🌟🌟',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                      'Indulge in the refreshing and bold fruity flavors of juice cans, perfect for quenching your thirst on the go.'),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Reviews',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        'See all',
                        style: TextStyle(
                            color: orange,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            fit: BoxFit.cover,
                            width:
                                (MediaQuery.of(context).size.width - 70) * 0.18,
                            image: AssetImage('assets/almok.jpg')),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            fit: BoxFit.cover,
                            width:
                                (MediaQuery.of(context).size.width - 70) * 0.18,
                            image: AssetImage('assets/john.jpg')),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            fit: BoxFit.cover,
                            width:
                                (MediaQuery.of(context).size.width - 70) * 0.18,
                            image: AssetImage('assets/santrinos.jpg')),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image(
                            fit: BoxFit.cover,
                            width:
                                (MediaQuery.of(context).size.width - 70) * 0.18,
                            image: AssetImage('assets/sia.jpg')),
                      ),
                      Container(
                        width: (MediaQuery.of(context).size.width - 70) * 0.18,
                        height: (MediaQuery.of(context).size.width - 70) * 0.18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(
                            color: orange,
                          ),
                        ),
                        child: Icon(
                          Icons.add,
                          color: orange,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ 10.99',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 26),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: orange,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
