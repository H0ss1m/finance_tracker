import 'package:finance_tracker/module/color.dart';
import 'package:flutter/material.dart';
import 'package:toggle_switch/toggle_switch.dart';

Widget toggleButton({
  required BuildContext context,
  required Function(int) onToggle,
}) {
  return ToggleSwitch(
    minWidth: MediaQuery.of(context).size.width,
    minHeight: 60.0,
    fontSize: 16.0,
    initialLabelIndex: 0,
    activeBgColor: [mainColor],
    activeFgColor: Colors.white,
    inactiveBgColor: Colors.grey,
    inactiveFgColor: Colors.grey[900],
    totalSwitches: 2,
    labels: ['Income', 'Expenses'],
    onToggle: (index) {
      onToggle;
    },
  );
}
