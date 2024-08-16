import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(Basketballcounter());
}

class Basketballcounter extends StatefulWidget {
  @override
  State<Basketballcounter> createState() => _BasketballcounterState();
}

class _BasketballcounterState extends State<Basketballcounter> {
  int teamApoints = 0;

  int teamBpoints = 0;

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            'Points Counter',
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 60),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(children: [
                    Text(
                      'Team A',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamApoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        teamApoints++;
                        setState(() {});
                      },
                      child: Text(
                        'Add 1 point ',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point ',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamApoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point ',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40),
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                  Column(children: [
                    Text(
                      'Team B',
                      style: TextStyle(fontSize: 30),
                    ),
                    Text(
                      '$teamBpoints',
                      style: TextStyle(fontSize: 150),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoints += 1;
                        });
                      },
                      child: Text(
                        'Add 1 point ',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoints += 2;
                        });
                      },
                      child: Text(
                        'Add 2 point ',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          teamBpoints += 3;
                        });
                      },
                      child: Text(
                        'Add 3 point ',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(100, 40),
                      ),
                    ),
                  ]),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    teamBpoints = 0;
                    teamApoints = 0;
                  });
                },
                child: Text(
                  'Reset ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  minimumSize: Size(150, 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
