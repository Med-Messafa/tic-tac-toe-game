class Result {
  late String name1;
  late String name2;
  late int score1;
  late int score2;

  Result({required this.name1, required this.name2, required this.score1, required this.score2});

  void setName1(String newName) {
    name1 = newName;
  }

  void setName2(String newName) {
    name2 = newName;
  }

  void setScore1(int newScore) {
    score1 = newScore;
  }

  void setScore2(int newScore) {
    score2 = newScore;
  }

  String getName1() {
    return name1;
  }

  String getName2() {
    return name2;
  }

  int getScore1() {
    return score1;
  }

  int getScore2() {
    return score2;
  }
}
