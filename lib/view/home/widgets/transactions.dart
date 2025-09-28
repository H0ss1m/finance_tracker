import 'package:finance_tracker/view/home/widgets/transactionsListView.dart';
import 'package:flutter/material.dart';

Widget transactions({
  required BuildContext context,
  required List transactionList,
}) {
  return SizedBox(
    width: MediaQuery.of(context).size.width,
    height: MediaQuery.of(context).size.height,
    child: Column(
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
            physics: NeverScrollableScrollPhysics(),
            itemCount: transactionList.length >= 4 ? 4 : transactionList.length,
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
    ),
  );
}
