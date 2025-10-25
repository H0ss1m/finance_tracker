import 'package:finance_tracker/view/analytics/analytics.dart';
import 'package:finance_tracker/view/home/widgets/toggile_button.dart';
import 'package:flutter/material.dart';

class AnalyticsPage extends StatefulWidget {
  const AnalyticsPage({super.key});

  @override
  State<AnalyticsPage> createState() => _AnalyticsPageState();
}

class _AnalyticsPageState extends State<AnalyticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        toggleButton(context: context, onToggle: (index) {}),
        const SizedBox(height: 20),
        const Text('Analytics Page Content Here'),
        SizedBox(
          width: double.infinity,
          height: 300,
          child: chartWidget(setState: setState))
      ],
    ),
  ),
    );
  }
}