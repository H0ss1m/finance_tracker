import 'package:finance_tracker/module/color.dart';
import 'package:flutter/material.dart';

Widget totalBalance({
  required BuildContext context,
  required double balance,
  required double income,
  required double expenses,
  required Function onIconPressed,
  }) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.21,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
      color: mainColor,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Stack(
      children: [
        // Background shapes
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/decor/totalBack2.png', fit: BoxFit.cover),
            Image.asset('assets/decor/totalBack1.png', fit: BoxFit.cover),
          ],
        ),

        // The main content
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Balance',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Row(
                children: [
                  Text(
                    '${balance.toStringAsFixed(2)} EGP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    // Edit functionality as needed
                    onPressed: () {
                      onIconPressed();
                    },
                    icon: Icon(Icons.remove_red_eye, color: Colors.white),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/income_icon.png',
                            color: Colors.green,
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            ' Income',
                            style: TextStyle(color: Colors.green, fontSize: 14),
                          ),
                        ],
                      ),
                      Text(
                        '${income.toStringAsFixed(2)} EGP',
                        style: TextStyle(color: Colors.green, fontSize: 14),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/icons/expenses_icon.png',
                            color: Colors.red,
                            width: 24,
                            height: 24,
                          ),
                          const Text(
                            ' Expenses',
                            style: TextStyle(color: Colors.red, fontSize: 14),
                          ),
                        ],
                      ),
                      Text(
                        '${expenses.toStringAsFixed(2)} EGP',
                        style: TextStyle(color: Colors.red, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
