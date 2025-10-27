import 'package:finance_tracker/module/color.dart';
import 'package:finance_tracker/view/home/widgets/transactionsListView.dart';
import 'package:flutter/material.dart';

class Transaction extends StatelessWidget {
  const Transaction({super.key, required this.transactionList});

  final List transactionList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transactions',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: mainColor,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: ListView.builder(
          itemCount: transactionList.length,
          itemBuilder: (context, index) {
            return transactionsListView(
              context: context,
              title: transactionList[index]['title'],
              category: transactionList[index]['category'],
              date: transactionList[index]['date'],
              amount: transactionList[index]['amount'],
              icon: transactionList[index]['icon'],
              iconBgColor: transactionList[index]['iconBgColor'],
              isIncome: transactionList[index]['isIncome'],
            );
          },
        ),
      ),
    );
  }
}
