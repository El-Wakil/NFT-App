import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:nti/shared/styles/colors.dart';

Widget defaultFloatingButton({
  double width = double.infinity,
  double radius = 15.0,
  bool isUpperCase = false,
  required Function function,
  required String text,
  var color = Colors.blue,
  double fontSize = 25.0,
  var textColor = Colors.white,
  double bordRaduis = 25.0,
}) => Container(
  width: width,
  height: 43.0,
  decoration: BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(bordRaduis),
  ),
  child: MaterialButton(
    onPressed: () {
      function();
    },
    child: Text(
      isUpperCase ? text.toUpperCase() : text,
      style: TextStyle(color: textColor, fontSize: fontSize),
    ),
  ),
);
Widget defaultElevatedButton({
  required Function function,
  required IconData icon,
  required String text,
  Color color = black,
}) =>
    ElevatedButton.icon(
      onPressed: () {
        function();
      },
      icon: Icon(icon),
      label: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w700,
            color: greyW,
            fontSize: 25.0),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: greyW,
      ),
    );

Widget myDivider({bool horiz = true}) => Padding(
  padding: const EdgeInsets.all(10.0),
  child: DottedLine(
    direction: horiz ? Axis.horizontal : Axis.vertical,
    lineLength: double.infinity,
    lineThickness: 1.0,
    dashLength: 10.0,
    dashGapLength: 10.0,
    dashColor: greyD,
    alignment: WrapAlignment.center,
  ),
);

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
