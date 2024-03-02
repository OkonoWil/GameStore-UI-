import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Welcome,",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 22 ),
              ),
              SizedBox(height: 3,),
              Text("What would you like to play?",
                style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal, fontSize: 19 ),
              ),
            ],
          ),
          CircleAvatar(
            child: Image.asset('assets/images/avatar.png', fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}