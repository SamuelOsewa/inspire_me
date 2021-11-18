import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<StatefulWidget> {
  int index = 0;
  final quotes = [
    "Spread love everywhere you go. Let no one ever come to you without leaving happier.",
    "When you reach the end of your rope, tie a knot in it and hang on.",
    "Always remember that you are absolutely unique. Just like everyone else.",
    "Don't judge each day by the harvest you reap but by the seeds that you plant.",
    "The future belongs to those who believe in the beauty of their dreams.",
    "Tell me and I forget. Teach me and I remember. Involve me and I learn.",
    "The best and most beautiful things in the world cannot be seen or even touched - they must be felt with the heart.",
    "It is during our darkest moments that we must focus to see the light.",
    "Whoever is happy will make others happy too.",
    "Do not go where the path may lead, go instead where there is no path and leave a trail.",
    "If life were predictable it would cease to be life and be without flavor.",
    "In the end, it's not the years in your life that count. It's the life in your years.",
    "Life is a succession of lessons which must be lived to be understood.",
    "You will face many defeats in life, but never let yourself be defeated.",
    "Never let the fear of striking out keep you from playing the game.",
    "Life is never fair, and perhaps it is a good thing for most of us that it is not.",
    "The only impossible journey is the one you never begin.",
    "In this life we cannot do great things. We can only do small things with great love.",
    "Only a life lived for others is a life worthwhile.",
    "The purpose of our lives is to be happy.",
    "Life is what happens when you're busy making other plans.",
    "You only live once, but if you do it right, once is enough.",
    "Live in the sunshine, swim the sea, drink the wild air.",
    "Go confidently in the direction of your dreams! Live the life you've imagined.",
    "The greatest glory in living lies not in never falling, but in rising every time we fall.",
  ];

  void _showQuote() {
    int randomNumber = Random().nextInt(24);
    setState(() {
      index = randomNumber;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              quotes[index],
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.all(35.0),
              // width: 120,
              // height: 50,
              decoration: BoxDecoration(
                  color: Colors.purpleAccent,
                  borderRadius: BorderRadius.circular(10.0)),
              child: FlatButton.icon(
                icon: Icon(Icons.ac_unit),
                onPressed: _showQuote,
                label: Text('Inspire Me'),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
