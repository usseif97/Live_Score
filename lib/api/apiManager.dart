import 'dart:convert';

import 'package:http/http.dart';
import 'package:live_score/models/soccerModel.dart';

class API {
  final String apiURL =
      "https://v3.football.api-sports.io/fixtures?live=all"; //&league=39
  static String apiKey = "be873130bfaddcec93c0017648d13488";

  static const headers = {
    'x-rapidapi-host': "v3.football.api-sports.io",
    'x-rapidapi-key': "be873130bfaddcec93c0017648d13488",
  };

  Future<List<SoccerMatch>> getAllMatches() async {
    Response response = await get(apiURL, headers: headers);
    var body;

    if (response.statusCode == 200) {
      body = jsonDecode(response.body);
      List<dynamic> matchesList = body['response'];
      print("API : $body");
      print("Heeeeeeey1");
      List<SoccerMatch> matches = matchesList
          .map((dynamic item) => SoccerMatch.fromJson(item))
          .toList();

      print("Heeeeeeey2");
      print("Matches : $matches");
      return matches;
    }
    return null;
  }
}
