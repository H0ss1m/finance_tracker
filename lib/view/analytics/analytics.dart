import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

int touchedIndex = -1;

Widget chartWidget({required Function setState, required List content}) {
  return PieChart(
    PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (FlTouchEvent event, pieTouchResponse) {
          setState(() {
            if (!event.isInterestedForInteractions ||
                pieTouchResponse == null ||
                pieTouchResponse.touchedSection == null) {
              touchedIndex = -1;
              return;
            }
            touchedIndex = pieTouchResponse.touchedSection!.touchedSectionIndex;
          });
        },
      ),
      borderData: FlBorderData(show: false),
      sectionsSpace: 0,
      centerSpaceRadius: 40,
      sections: showingSections(content: content),
    ),
  );
}

List<PieChartSectionData> showingSections({required List content}) {
  return List.generate(content.length, (i) {
    final isTouched = i == touchedIndex;
    final fontSize = isTouched ? 25.0 : 16.0;
    final radius = isTouched ? 75.0 : 65.0;
    const shadows = [Shadow(color: Color(0xff000000), blurRadius: 2)];
    // switch (i) {
    // case content.length - 1:
    return PieChartSectionData(
      color: content[i]['color'],
      value: content[i]['value'],
      title: '${content[i]['value'].toString()} %',
      radius: radius,
      titlePositionPercentageOffset: 0.5,
      showTitle: true,
      titleStyle: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
        shadows: shadows,
        inherit: true,
      ),
    );
    // default:
    // throw Error();
    // }
  });
}

