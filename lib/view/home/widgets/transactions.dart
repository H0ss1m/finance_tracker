import 'package:finance_tracker/view/home/widgets/transactionsListView.dart';
import 'package:flutter/material.dart';

Widget transactions({
  required BuildContext context,
  required List transactionList,
}) {
  return Column(
    children: [
      ListTile(
        title: const Text(
          'Recent Transactions',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        trailing: TextButton(
          onPressed: () {},
          child: Text('View All', style: TextStyle(color: Colors.blueAccent)),
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: transactionList.length >= 5 ? 5 : transactionList.length,
          itemBuilder: (context, index) {
            return transactionsListView(
              context: context,
              title: transactionList[index]['title'],
              date: transactionList[index]['date'],
              amount: transactionList[index]['amount'],
              icon: transactionList[index]['icon'],
              iconBgColor: transactionList[index]['iconBgColor'],
              isIncome: transactionList[index]['isIncome'],
              transactionList: transactionList,
            );
          },
        ),
      ),
    ],
  );
}
