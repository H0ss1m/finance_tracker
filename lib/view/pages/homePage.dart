// ignore_for_file: file_names

import 'package:finance_tracker/view/home/widgets/totalBalance.dart';
import 'package:finance_tracker/view/home/widgets/transactions.dart';
import 'package:flutter/material.dart';

Widget homePage({
  required BuildContext context,
  required List transactionList,
}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: ListView(
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
        transactions(context: context, transactionList: transactionList),
      ],
    ),
  );
}
