import 'package:flutter/material.dart';
import 'package:live_score/api/apiManager.dart';
import 'package:live_score/widgets/bodyWidget.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFefedf2),
      body: FutureBuilder(
        future: API().getAllMatches(),
        builder: (context, snapshot) {
          print("SnapShot: ${snapshot.data}");
          if (snapshot.hasData) {
            return bodyWidget(snapshot.data);
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
