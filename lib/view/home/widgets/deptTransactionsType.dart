import 'package:flutter/material.dart';

Widget deptTransactionsType({
  required BuildContext context,
  required int transactionType,
  required double transactionAmount,
  required bool isBorrowed,
}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Row(
        spacing: 10,
        children: [
          Icon(
            Icons.circle,
            color: isBorrowed ? Colors.green : Colors.red,
            size: 18,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                isBorrowed
                    ? '$transactionType Borrowed'
                    : '$transactionType Lent',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: isBorrowed ? Colors.green : Colors.red,
                ),
              ),
              Text(
                '$transactionAmount EGP',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
