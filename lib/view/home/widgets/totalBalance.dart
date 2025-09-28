import 'package:finance_tracker/controller/stateGetX.dart';
import 'package:finance_tracker/module/color.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

Widget totalBalance({
  required BuildContext context,
  required double balance,
  required double income,
  required double expenses,
}) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.23,
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
              GetBuilder<TotalBalanceController>(
                init: TotalBalanceController(),
                builder: (controller) {
                  return Row(
                    children: [
                      Text(
                        controller.isVisible
                            ? '${balance.toStringAsFixed(2)} EGP'
                            : '*************',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      IconButton(
                        // Edit functionality as needed
                        onPressed: () {
                          controller.toggleVisibility();
                        },
                        icon: controller.isVisible
                            ? const Icon(
                                Icons.visibility_off,
                                color: Colors.white,
                              )
                            : const Icon(
                                Icons.remove_red_eye,
                                color: Colors.white,
                              ),
                      ),
                    ],
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            style: TextStyle(
                              color: Colors.green,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${income.toStringAsFixed(2)} EGP',
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        '${expenses.toStringAsFixed(2)} EGP',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
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
