// ignore_for_file: file_names

import 'package:finance_tracker/module/color.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Widget deptTransactionViewer({
  required BuildContext context,
  required String deptName,
  required int phone,
  required String repaymentDate,
  required String lastRepayment,
  required double amount,
  required bool isIncome,
}) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: componentColor,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/user.png',
              // height: 100, width: 100
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  deptName,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Phone: ',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(phone.toString(), style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            Spacer(),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                '${amount.toString()} EGP',
                style: TextStyle(
                  color: isIncome ? Colors.green : Colors.red,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Repayment Date: ',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(repaymentDate, style: TextStyle(color: Colors.white)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Last Repayment: ',
                      style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(lastRepayment, style: TextStyle(color: Colors.white)),
                  ],
                ),
              ],
            ),
            IconButton(
              onPressed: () {
                launcher(phone);
              },
              icon: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Icon((Icons.call), color: mainColor),
              ),
            ),
          ],
        ),
      ],
    ),
  );
}

void launcher(int phone) {
  launchUrl(
    Uri.parse('tel:$phone'),
    mode: LaunchMode.externalNonBrowserApplication,
  );
}
