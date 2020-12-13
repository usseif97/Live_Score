import 'package:flutter/material.dart';
import 'package:live_score/models/soccerModel.dart';
import 'package:live_score/widgets/goalsWidget.dart';
import 'package:live_score/widgets/matchTileWidget.dart';
import 'package:live_score/widgets/teamWidget.dart';

Widget bodyWidget(List<SoccerMatch> allMatches) {
  if (allMatches.length == 0) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          "No Matches",
          style: TextStyle(fontSize: 36, color: Colors.white),
        ),
      ),
    );
  } else {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 10),
          Expanded(
            flex: 2,
            child: Container(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18, vertical: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    teamWidget("Local Team", allMatches[0].home.logoURL,
                        allMatches[0].home.name),
                    goalsWidget(allMatches[0].fixture.status.elapsedTime,
                        allMatches[0].goal.home, allMatches[0].goal.away),
                    teamWidget("Visitor Team", allMatches[0].away.logoURL,
                        allMatches[0].away.name),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Matches",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  SizedBox(height: 15),
                  Expanded(
                    child: ListView.builder(
                      itemCount: allMatches.length,
                      itemBuilder: (context, index) {
                        return matchTileWidget(allMatches[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
