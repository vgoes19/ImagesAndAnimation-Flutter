import 'package:flutter/material.dart';
import 'package:images/components/dificult_stars.dart';
import 'package:images/components/text_level.dart';

class CardCharacter extends StatefulWidget {

  final String nameCharacter;
  final String pathGifCharacter;
  final int dificultLevelUp;

  const CardCharacter({
    Key? key,
    required this.nameCharacter,
    required this.pathGifCharacter,
    required this.dificultLevelUp
  }) : super(key: key);

  @override
  State<CardCharacter> createState() => _CardCharacterState();
}

class _CardCharacterState extends State<CardCharacter> {
  int level = 0;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 140, 
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
          ),
          Column(
            children: [
              Container(
                height: 100, 
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          widget.pathGifCharacter,
                        ),
                      ),
                    ),

                    DificultStars(
                      nameCharacter: widget.nameCharacter, 
                      dificultLevelUp: widget.dificultLevelUp
                    ),

                    Padding(
                      padding: const EdgeInsets.only(right: 10, top: 10),
                      child: SizedBox(
                        height: 50,
                        width: 55,
                        child: ElevatedButton(
                          onPressed: (){
                            setState(() {
                              level++;
                            });
                          }, 
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const <Widget> [
                              Icon(Icons.arrow_drop_up_rounded),
                              Text('UP', style: TextStyle(fontSize: 14),)
                            ],
                          )
                        ),
                      ),
                    )
                  ],
                ),
              ),

              TextLevel(
                dificultLevelUp: widget.dificultLevelUp, 
                level: level
              ),
            ],
          )
        ],
      ),
    );
  }
}