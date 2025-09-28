// ignore_for_file: file_names

import 'package:finance_tracker/module/color.dart';
import 'package:flutter/material.dart';

Widget transactionsListView({
  required BuildContext context,
  required String title,
  required String date,
  required double amount,
  required IconData icon,
  required Color iconBgColor,
  required bool isIncome,
  required List transactionList,
}) {
  return Container(
    // padding: const EdgeInsets.all(10),
    margin: const EdgeInsets.symmetric(vertical: 5),
    decoration: BoxDecoration(
      // ignore: deprecated_member_use
      color: componentColor.withOpacity(0.5),
      borderRadius: BorderRadius.circular(15),
    ),
    child: ListTile(
      leading: Icon(icon, color: iconBgColor, size: 30),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: Text(date),
      trailing: Text(
        isIncome ? '+ ${amount.toString()} EGP' : '- ${amount.toString()} EGP',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: isIncome ? Colors.green : Colors.red,
        ),
      ),
    ),
  );
}
