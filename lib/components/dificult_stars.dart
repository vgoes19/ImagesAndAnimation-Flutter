import 'package:flutter/material.dart';

class DificultStars extends StatelessWidget {

  final String nameCharacter;
  final int dificultLevelUp;

  const DificultStars({
    Key? key,
    required this.nameCharacter,
    required this.dificultLevelUp
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nameCharacter,
            style: const TextStyle(
              fontSize: 24,
              overflow: TextOverflow.ellipsis
            ),
          ),
          Row(
            children: [
              const Text('Dificuldade: '),
              Icon(
                Icons.star ,
                size: 20,
                color: dificultLevelUp >= 1 ? Colors.blue : Colors.blue[100],
              ),
              Icon(
                Icons.star ,
                size: 20,
                color: dificultLevelUp >= 2 ? Colors.blue : Colors.blue[100],
              ),
              Icon(
                Icons.star ,
                size: 20,
                color: dificultLevelUp >= 3 ? Colors.blue : Colors.blue[100],
              ),
              Icon(
                Icons.star ,
                size: 20,
                color: dificultLevelUp >= 4 ? Colors.blue : Colors.blue[100],
              ),
              Icon(
                Icons.star ,
                size: 20,
                color: dificultLevelUp >= 5 ? Colors.blue : Colors.blue[100],
              ),
            ],
          )
        ],
      ),
    );
  }
}