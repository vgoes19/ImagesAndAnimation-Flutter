import 'package:flutter/material.dart';
import 'package:images/components/list_character.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool opacity = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(widget.title),
      ),
      body: AnimatedOpacity(
        opacity: opacity ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: const ListCharacter(),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.grey[700],
        onPressed: (){
          setState(() {
            opacity = !opacity;
          });
        },
        child: const Icon(Icons.remove_red_eye_outlined)
      ),
    );
  }
}

