import 'package:flutter/material.dart';

import '../const.dart';

class DrinkCard extends StatefulWidget {
  const DrinkCard(
      {super.key,
      required this.imagePath,
      required this.name,
      required this.color});
  final String imagePath;
  final String name;
  final Color color;
  @override
  State<DrinkCard> createState() => _DrinkCardState();
}

class _DrinkCardState extends State<DrinkCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              height: 55,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              color: widget.color,
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.6,
                child: Row(children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          height: MediaQuery.of(context).size.width * 0.5,
                          child: DefaultTextStyle(
                              style: TextStyle(color: Colors.white),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      widget.name,
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                        'Indulge in the refreshing and bold fruity flavors of ${widget.name} cans, perfect for quenching your thirst on the go.'),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          'BUY NOW',
                                          style: TextStyle(
                                            color: widget.color,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )),
                        ),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
        Positioned(
          bottom: 50,
          right: -40,
          child: Image(
            image: AssetImage(widget.imagePath),
          ),
        )
      ],
    );
  }
}
