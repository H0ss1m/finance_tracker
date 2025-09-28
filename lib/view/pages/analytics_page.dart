import 'package:finance_tracker/view/home/widgets/toggile_button.dart';
import 'package:flutter/material.dart';

Widget analyticPage({required BuildContext context}) {
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Column(
      children: [
        toggleButton(context: context, onToggle: (index) {}),
        const SizedBox(height: 20),
        const Text('Analytics Page Content Here'),
      ],
    ),
  );
}
