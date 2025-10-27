// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget contentDetails({required List content}) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        leading: CircleAvatar(backgroundColor: content[index]['color']),
        title: Text(
          content[index]['title'],
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        trailing: Text(
          '${content[index]['value']} %',
          style: TextStyle(fontSize: 16),
        ),
      );
    },
    itemCount: content.length,
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
  );
}
