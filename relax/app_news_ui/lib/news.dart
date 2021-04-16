import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

Color orange = Color(0xFFFB5F5B);

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Politics',
          textAlign: TextAlign.start,
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Newsreader',
              color: orange,
              fontWeight: FontWeight.bold),
        ),
        elevation: 1.0,
        actions: <Widget>[
          IconButton(
            iconSize: 22,
            icon: Icon(
              CupertinoIcons.textformat_alt,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            iconSize: 22,
            icon: Icon(
              CupertinoIcons.bookmark,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            iconSize: 22,
            icon: Icon(
              CupertinoIcons.arrowshape_turn_up_right,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 30, 0, 10),
                  child: Text(
                    'Jacob Blake: Trump Visits Kenosha to Back Police...',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Newsreader',
                    ),
                  ),
                ),
                Text(
                  'US President Donald Trump has visited Kenosha, Wisconsin, to back law enforcement after the police shooting of a black man sparked civil strife.',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey[700]),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Hero(
                      tag: 'done',
                      child: Image(
                        image: AssetImage('images/trump.webp'),
                      ),
                    ),
                  ),
                ),
                Text(
                  'By Michael Roy',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                  child: Text(
                    'Published Aug 28, 2020',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFc2c2cf),
                    ),
                  ),
                ),
                Text(
                  'Updated Aug 29, 2020, 10:48 am ET',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFc2c2cf),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                  child: Text(
                    'US President Donald Trump has visited Kenosha, Wisconsin, to back law enforcement after the police shooting of a black man sparked civil strife.',
                    style: TextStyle(fontSize: 15, color: Colors.blueGrey[700]),
                  ),
                ),
                Text(
                  'US President Donald Trump has visited Kenosha, Wisconsin, to back law enforcement after the police shooting of a black man sparked civil strife.',
                  style: TextStyle(fontSize: 15, color: Colors.blueGrey[700]),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Row(
                    children: [
                      Container(
                        width: 320,
                        padding: EdgeInsets.all(10.0),
                        child: TextField(
                          autocorrect: true,
                          decoration: InputDecoration(
                            hintText: 'Write a comment...',
                            hintStyle: TextStyle(color: Colors.grey),
                            filled: true,
                            fillColor: Colors.white70,
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12.0)),
                              borderSide:
                                  BorderSide(color: Colors.red, width: 0.5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10.0)),
                              borderSide: BorderSide(color: Colors.red),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Color(0xFFFB5953),
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0))),
                        child: Center(
                            child: Icon(
                          CupertinoIcons.play_arrow_solid,
                          color: Colors.white,
                        )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
