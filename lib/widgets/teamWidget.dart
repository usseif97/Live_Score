import 'package:flutter/material.dart';

Widget teamWidget(String team, String logoURL, String teamName) {
  return Expanded(
    child: Column(
      children: <Widget>[
        Expanded(
          child: Image.network(
            logoURL,
            width: 54,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          teamName,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ],
    ),
  );
}
