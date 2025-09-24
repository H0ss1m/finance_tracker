import 'package:finance_tracker/view/home/widgets/deptTransaction.dart';
import 'package:flutter/material.dart';

Widget deptPage({required BuildContext context, required List deptList}) {
  return Column(
    children: [
      Container(),
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
