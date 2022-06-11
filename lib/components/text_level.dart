import 'package:flutter/material.dart';

class TextLevel extends StatelessWidget {

  final int dificultLevelUp;
  final int level;

  const TextLevel({
    Key? key,
    required this.dificultLevelUp,
    required this.level
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 250,
            child: LinearProgressIndicator(
              color: Colors.white,
              value: dificultLevelUp > 0 ? (level/dificultLevelUp)/10 : 1,
            ),
          ),
          Text(
            'Nivel: ${(level/dificultLevelUp)/10 >= 1 ? 'Máx' : level}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18
            ),
          ),
        ],
      ),
    );
  }
}