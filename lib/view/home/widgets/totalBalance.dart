import 'package:finance_tracker/module/color.dart';
import 'package:flutter/material.dart';

Widget totalBalance() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      children: [
        // Background shapes
        Row(),
        // The main content
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Balance',
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Row(
              children: [
                Text(
                  '\$12,345.67',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.remove_red_eye, color: Colors.white),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  );
}
