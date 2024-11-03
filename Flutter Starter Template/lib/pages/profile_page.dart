import 'package:flutter/material.dart';

/*

P R O F I L E P A G E

This is the ProfilePage, which the majority of apps need.

Some ideas:

- This could be a good place for the user to build a reputation system 
like a star rating

- Show followers and following

- Could be a place to show what products/services they are selling/offering

- Could be just a collection of photos and videos like Instagram

*/

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // top circle profile pic
        Center(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Container(
              height: 160,
              width: 160,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200],
              ),
            ),
          ),
        ),

        // grid of photos or items
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 10,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) => Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[200],
            ),
          ),
        ),
      ],
    );
  }
}
