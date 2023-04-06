import 'package:drinkapp_by_r/screens/screens.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatefulWidget {
  const MyAppBar({super.key, required this.destination, required this.color});
  final Widget destination;
  final Color color;
  @override
  State<MyAppBar> createState() => _MyAppBarState();
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget.destination),
            );
          },
          child: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: widget.color,
          ),
        ),
        Text(
          'R Drinks',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
            color: widget.color,
          ),
        ),
        Icon(
          Icons.account_balance_wallet,
          size: 30,
          color: widget.color,
        ),
      ],
    );
  }
}
