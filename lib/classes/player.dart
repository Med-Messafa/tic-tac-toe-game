class Player {
  late String name; // Using `late` keyword to indicate that the field will be initialized before it's used.
  int score = 0;

  Player(String name) {
    this.name = name;
  }

  Player.empty();

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  void updateScore(int a) {
    score += a;
  }

  int getScore() {
    return score;
  }
}
