import 'package:flutter/material.dart';
import 'package:gamestore_test_ui/configs/theme.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      child: Stack(
        children: [
          TextField(
            cursorColor: color(context).primaryColor,
            decoration: InputDecoration(
              fillColor: Colors.white,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(width: 0, style: BorderStyle.none)
              ),
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              ),
              hintText: 'Search game',
              hintStyle: const TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
          Positioned(
            bottom: 14,
            right: 12,
            height: 40,
            width: 40,
            child: Container(
              decoration: BoxDecoration(
                color: color(context).primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Icon(
                Icons.mic_sharp,
                color: Colors.white,
                size: 32,
              ),
            ))
        ],
      ),
    );
  }
}