import 'package:flutter/material.dart';
import 'package:gamestore_test_ui/models/game.dart';
import 'package:gamestore_test_ui/pages/detail/detail_page.dart';

class PopularGame extends StatelessWidget {
  PopularGame({super.key});

  final List<Game> games = Game.games();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        scrollDirection: Axis.horizontal,
        itemBuilder: (contex, index) => GestureDetector(
          onTap: () => Navigator.of(context).push(MaterialPageRoute(
            builder: (contex)=> DetailPage(games[index],
            ),
          ),),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Image.asset(games[index].bgImage),),
            ),
          ),
        ), 
        separatorBuilder: (_, index) => const SizedBox(width: 10,), 
        itemCount: games.length),
    );
  }
}