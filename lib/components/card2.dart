import 'package:flutter/material.dart';

import '../fooderlich_theme.dart';
import 'author_card.dart';


class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(
          width: 350,
          height: 450,
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mag5.png'),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Column(
          children:  [
            const AuthorCard(
              authorName: 'Franciscus XII',
              title: 'I like coffee',
              imageProvider: AssetImage('assets/yellowboy.jpg'),
            ),

            Expanded(
                child: Stack(
                  children: [
                    Positioned(
                      bottom: 16,
                      right: 16,
                      child: Text(
                          'free',
                          style: FooderlichTheme.lightTextTheme.headline1,
                        ),
                    ),

                    Positioned(
                      bottom: 70,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                       child: Text(
                         'Smoothies',
                         style: FooderlichTheme.lightTextTheme.headline1,
                       ),
                      ),
                    ),
                  ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}
