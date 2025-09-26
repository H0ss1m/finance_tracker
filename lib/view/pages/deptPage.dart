import 'package:finance_tracker/module/color.dart';
import 'package:finance_tracker/view/home/widgets/deptTransaction.dart';
import 'package:finance_tracker/view/home/widgets/deptTransactionsType.dart';
import 'package:flutter/material.dart';

Widget deptPage({required BuildContext context, required List deptList}) {
  return Column(
    children: [
      Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
        decoration: BoxDecoration(
          color: componentColor,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Total Dept :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              // Change to dynamic value
              '7000 EGP',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    deptTransactionsType(
                      context: context,
                      transactionType: 10,
                      transactionAmount: 200.0,
                      isBorrowed: true,
                    ),

                    deptTransactionsType(
                      context: context,
                      transactionType: 5,
                      transactionAmount: 150.0,
                      isBorrowed: false,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      Expanded(
        child: ListView.builder(
          itemCount: deptList.length,
          itemBuilder: (context, index) {
            // final dept = deptList[index];
            return deptTransactionViewer(
              context: context,
              deptName: deptList[index]['name'],
              phone: deptList[index]['phone'],
              repaymentDate: deptList[index]['repaymentDate'],
              lastRepayment: deptList[index]['lastRepayment'],
              amount: deptList[index]['amount'],
              isIncome: deptList[index]['isIncome'],
            );
          },
        ),
      ),
    ],
  );
}
