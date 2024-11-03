import 'package:flutter/material.dart';

/*

H O M E P A G E

This is the HomePage, the first page the user will see based off what was configured in the MainPage.
Currently it is just showing a vertical list of boxes.

What should the HomePage for your app look like?

You should place the most important aspect of your app on this page
as this is the very first page the user will see!

*/

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Container(
            height: 200,
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: Colors.grey[200],
            ),
          ),
        ),
      ),
    );
  }
}
