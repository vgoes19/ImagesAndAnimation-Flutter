import 'package:flutter/material.dart';

import 'card_character.dart';

class ListCharacter extends StatelessWidget {
  const ListCharacter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ 
        Column(
          children: const <Widget>[
            CardCharacter(
              nameCharacter: 'Paladino', 
              pathGifCharacter: 'images/gifs/paladino.gif',
              dificultLevelUp: 3
            ),
            CardCharacter(
              nameCharacter: 'Ninja',
              pathGifCharacter: 'images/gifs/ninja.gif',
              dificultLevelUp: 2
            ),
            CardCharacter(
              nameCharacter: 'Guerreiro',
              pathGifCharacter: 'images/gifs/guerreiro.gif',
              dificultLevelUp: 4
            ),
            CardCharacter(
              nameCharacter: 'Feiticeira',
              pathGifCharacter: 'images/gifs/feiticeira.gif',
              dificultLevelUp: 4
            ),
            CardCharacter(
              nameCharacter: 'Cavaleiro',
              pathGifCharacter: 'images/gifs/cavaleiro.gif',
              dificultLevelUp: 3
            ),
            CardCharacter(
              nameCharacter: 'Bestial',
              pathGifCharacter: 'images/gifs/bestial.gif',
              dificultLevelUp: 2
            ),
            CardCharacter(
              nameCharacter: 'Dracon',
              pathGifCharacter: 'images/gifs/dracon.gif',
              dificultLevelUp: 1
            ),
            SizedBox(height: 100)
          ],
        ),
      ]
    );
  }
}