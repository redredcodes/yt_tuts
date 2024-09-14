import 'package:flutter/material.dart';
import 'package:yt_tuts/widgets.dart';

import 'circle.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List _posts = [
      'post 1',
      'post 2',
      'post 3',
      'post 4',
      'post 5',
      'post 6'
    ];
    final List _stories = [
      'story 1',
      'story 2',
      'story 3',
      'story 4',
      'story 5',
      'story 6'
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink[100],
          centerTitle: true,
          title: const Text('Pinkstagram', style: TextStyle(fontWeight: FontWeight.bold),),
        ),
        body: SafeArea(
          child: Column(
                children: [
          /// instagram stories
          Container(
            color: Colors.pink[100],
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: _stories.length,
              itemBuilder: (context, index) {
                return MyCircle(
                  child: _stories[index] ,
                );
              },
            ),
          ),
          
          /// instagram posts
          Expanded(
            flex: 4,
            child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return MySquare(
                    child: _posts[index],
                  );
                }),
          ),
                ],
              ),
        ));
  }
}
