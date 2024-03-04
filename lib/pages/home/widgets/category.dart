import 'package:flutter/material.dart';
import 'package:gamestore_test_ui/pages/home/widgets/popular.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      'icon': Icons.track_changes_outlined,
      'color': const Color(0xFF605CF4),
      'title': 'Arcabe'
    },
    {
      'icon': Icons.sports_motorsports_outlined,
      'color': const Color(0xFFFC77A6),
      'title': 'Racing'
    },
    {
      'icon': Icons.casino_outlined,
      'color': const Color(0xFF4391FF),
      'title': 'Strategy'
    },
    {
      'icon': Icons.sports_esports,
      'color': const Color(0xFF7182f2),
      'title': 'More'
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1000,
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Column(children: [
        Container(
          height: 140,
          padding: const EdgeInsets.all(25),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) => Column(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: categories[index]['color'] as Color,
                ),
                child: Icon(
                  categories[index]['icon'] as IconData,
                  color: Colors.white,
                  size: 50,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                categories[index]['title'] as String,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
                ),
            ],), 
            separatorBuilder: (_, index) => const SizedBox(width: 33,), 
            itemCount: categories.length,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric( horizontal: 25),
          width: 410,
          child: const Text(
            'Popular game',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
        ),
        PopularGame(),
        Container(
          padding: const EdgeInsets.symmetric( horizontal: 25),
          width: 410,
          child: const Text(
            'Newest game',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
        ),
      ],),
    );
  }
}