import 'package:flutter/material.dart';
import 'package:gamestore_test_ui/models/game.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        itemBuilder: (contex, index) => GestureDetector(
          onTap: null,
        ), 
        separatorBuilder: (_, index) => const SizedBox(width: 15,), 
        itemCount: games.length),
    );
  }
}