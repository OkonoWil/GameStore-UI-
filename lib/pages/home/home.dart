import 'package:flutter/material.dart';
import 'package:gamestore_test_ui/pages/home/widgets/header.dart';
import 'package:gamestore_test_ui/pages/home/widgets/search.dart';
import 'package:gamestore_test_ui/pages/home/widgets/category.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF5F67EA),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(150, 50),
                child: Image.asset('assets/images/bg_liquid.png', width: 200,)
              ),
              Positioned(
                left: 0,
                top: 200,
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: const Offset(180, 100),
                  child: Image.asset('assets/images/bg_liquid.png', width: 200,)
                ) 
              ),
              Column(
                children: [
                  const HeaderSection(),
                  const SearchSection(),
                  CategorySection()
                ],
              )
            ],
          )),
        bottomNavigationBar: navigationBar(),
      );
  }
}

Widget navigationBar(){
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 240, 241, 241),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          blurRadius: 10,
          spreadRadius: 5,
          offset: const Offset(0, 5),
        ),
      ]
    ),
    child: ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30)
      ),
      child: BottomNavigationBar(
          selectedItemColor: const Color(0xFF5F67EA),
          selectedFontSize: 12,
          unselectedFontSize: 12,
          unselectedItemColor: Colors.grey.withOpacity(0.7),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 40,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.pending_rounded, size: 40),
              label: 'Application',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_rounded, size: 40),
              label: 'Film',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined, size: 40),
              label: 'Book',
            ),
          ],
          currentIndex: 0,
        ),
      
    ),
  );  
}