// ignore_for_file: file_names

import 'package:finance_tracker/view/home/widgets/totalBalance.dart';
import 'package:finance_tracker/view/home/widgets/transactions.dart';
import 'package:flutter/material.dart';

Widget homePage({
  required BuildContext context,
  required List totalData,
  required List transactionList,
}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      spacing: 20,
      children: [
        // Total Balance Section
        totalBalance(
          context: context,
          balance: totalData[2]['amount'],
          income: totalData[0]['amount'],
          expenses: totalData[1]['amount'],
        ),

        //Transactions Section
        Expanded(
          child: transactions(
            context: context,
            transactionList: transactionList,
          ),
        ),
      ],
    ),
  );
}
