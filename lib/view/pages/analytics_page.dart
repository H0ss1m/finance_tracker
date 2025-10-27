import 'package:finance_tracker/view/analytics/analytics.dart';
import 'package:finance_tracker/view/analytics/widgets/content_details.dart';
import 'package:finance_tracker/view/home/widgets/toggile_button.dart';
import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  List content = [
    {'title': 'money', 'value': 40.0, 'color': Colors.green},
    {'title': 'expenses', 'value': 20.0, 'color': Colors.orange},
    {'title': 'remaining', 'value': 20.0, 'color': Colors.red},
    {'title': 'income', 'value': 20.0, 'color': Colors.blue},
  ];

  List income = [
    {'title': 'salary', 'value': 40.0, 'color': Colors.green},
    {'title': 'freelance', 'value': 20.0, 'color': Colors.orange},
    {'title': 'bonus', 'value': 20.0, 'color': Colors.red},
    {'title': 'other', 'value': 20.0, 'color': Colors.blue},
  ];

  List expenses = [
    {'title': 'food', 'value': 40.0, 'color': Colors.green},
    {'title': 'transport', 'value': 20.0, 'color': Colors.orange},
    {'title': 'entertainment', 'value': 20.0, 'color': Colors.red},
    {'title': 'other', 'value': 20.0, 'color': Colors.blue},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              toggleButton(context: context, onToggle: (index) {}),
              // const SizedBox(height: 10),
              // const Text('Analytics Page Content Here'),
              Container(
                margin: const EdgeInsets.only(top: 20, bottom: 20),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 300,
                      child: chartWidget(setState: setState, content: content),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.18,
                      child: SingleChildScrollView(
                        child: contentDetails(content: content),
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Data Item ${index + 1}'),
                    subtitle: Text('Details about Data Item ${index + 1}'),
                  );
                },
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
