import 'package:flutter/material.dart';
import 'package:live_score/models/soccerModel.dart';

Widget matchTileWidget(SoccerMatch match) {
  return Container(
    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
      color: Colors.transparent.withOpacity(0.4),
      borderRadius: BorderRadius.all(
        Radius.circular(40),
      ),
    ),
    child: Container(
      margin: EdgeInsets.symmetric(vertical: 12, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Text(
              match.home.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Image.network(
            match.home.logoURL,
            width: 36,
          ),
          Expanded(
            child: Text(
              "${match.goal.home} - ${match.goal.away}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          Image.network(
            match.away.logoURL,
            width: 36,
          ),
          Expanded(
            child: Text(
              match.away.name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
