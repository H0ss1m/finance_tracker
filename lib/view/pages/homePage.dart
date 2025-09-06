import 'package:finance_tracker/module/color.dart';
import 'package:finance_tracker/view/home/widgets/totalBalance.dart';
import 'package:finance_tracker/view/home/widgets/transactions.dart';
import 'package:flutter/material.dart';

Widget homePage({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          // Total Balance Section
          totalBalance(
            context: context,
            balance: 12345.67,
            income: 12345.67,
            expenses: 32555.90,
            onIconPressed: () {},
          ),

          // Some spacing
          const SizedBox(height: 20),

          //Transactions Section
          transactions(
            context: context,
            title: 'Food',
            date: '20/8/2024',
            amount: 50.00,
            isIncome: false,
            icon: Icons.food_bank,
            iconBgColor: mainColor,
          ),
        ],
      ),
    ),
  );
}
