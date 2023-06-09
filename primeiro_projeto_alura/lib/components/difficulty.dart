import 'package:flutter/material.dart';

class Difficulty extends StatelessWidget {
  final int dificultyLevel;
  final int masteryLevel;

  const Difficulty({
    required this.dificultyLevel, required this.masteryLevel,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Icon(Icons.star,
          size: 15,
          color: (dificultyLevel >= 1 ? Colors.blue : Colors.blue[100])),
      Icon(Icons.star,
          size: 15,
          color: (dificultyLevel >= 2 ? Colors.blue : Colors.blue[100])),
      Icon(Icons.star,
          size: 15,
          color: (dificultyLevel >= 3 ? Colors.blue : Colors.blue[100])),
      Icon(Icons.star,
          size: 15,
          color: (dificultyLevel >= 4 ? Colors.blue : Colors.blue[100])),
      Icon(Icons.star,
          size: 15,
          color: (dificultyLevel >= 5 ? Colors.blue : Colors.blue[100]))
    ]);
  }
}

funcMasteryDifficulty(int difficult, int level, int mastery) {
  if (difficult == 1 && level >= 10 ||
      difficult == 2 && level == 20 ||
      difficult == 3 && level == 30 ||
      difficult == 4 && level == 40 ||
      difficult == 5 && level == 50) {
    return mastery == 1;
  }

  /*else if (difficult == 1 && level >= 20 ||
      difficult == 2 && level == 40 ||
      difficult == 3 && level == 60 ||
      difficult == 4 && level == 80 ||
      difficult == 5 && level == 100) {
    return mastery == 2; 
    } */
}
