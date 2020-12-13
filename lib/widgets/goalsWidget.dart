import 'package:flutter/material.dart';

Widget goalsWidget(int expandedTime, int homeGoal, int awayGoal) {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          "$expandedTime '",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        Expanded(
          child: Center(
            child: Text(
              "$homeGoal - $awayGoal",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 36, color: Colors.white),
            ),
          ),
        ),
      ],
    ),
  );
}
