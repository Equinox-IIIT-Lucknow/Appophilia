import 'package:app_news_ui/news.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

Color orange = Color(0xFFFB5F5B);

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Daily News',
          style: TextStyle(
              fontSize: 22.0,
              fontFamily: 'Newsreader',
              color: orange,
              fontWeight: FontWeight.bold),
        ),
        elevation: 1.0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              iconSize: 27,
              icon: Icon(
                CupertinoIcons.bell,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => News(),
                    ),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
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
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => News(),
                      ),
                    );
                  },
                  child: Text(
                    'Jacob Blake: Trump Visits Kenosha to Back Police...',
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Newsreader',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: IntrinsicHeight(
                  child: Row(
                    children: <Widget>[
                      Text(
                        '20 min ago',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Newsreader',
                        ),
                      ),
                      VerticalDivider(
                        endIndent: 2,
                        indent: 2,
                        width: 20,
                        thickness: 1,
                        color: Colors.blueGrey,
                      ),
                      Text(
                        'Politics',
                        style: TextStyle(
                          color: orange,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Newsreader',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.blueGrey, width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image(
                            image: AssetImage(
                              'images/thinking.jpg',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Who Is Paris Hilton, \nReally?',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Newsreader',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                'Every things looks ok to me \ni guess so let go so lets go so lets',
                                style: TextStyle(
                                    color: Color(0xFFc2c2cf),
                                    fontSize: 14,
                                    fontFamily: 'Newsreader',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '10 hour ago',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Newsreader',
                                      ),
                                    ),
                                    VerticalDivider(
                                      endIndent: 2,
                                      indent: 2,
                                      width: 20,
                                      thickness: 1,
                                      color: Colors.blueGrey,
                                    ),
                                    Text(
                                      'Fashion',
                                      style: TextStyle(
                                        color: orange,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Newsreader',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(color: Colors.blueGrey, width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  child: Row(
                    //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15.0),
                          child: Image(
                            image: AssetImage(
                              'images/messi.jpg',
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'The True Cost Of,\nLionel Messi\'s...',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Newsreader',
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
                              child: Text(
                                'Every things looks ok to me \ni guess so let go so lets go so lets',
                                style: TextStyle(
                                    color: Color(0xFFc2c2cf),
                                    fontSize: 14,
                                    fontFamily: 'Newsreader',
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                              child: IntrinsicHeight(
                                child: Row(
                                  children: <Widget>[
                                    Text(
                                      '10 hours ago ',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Newsreader',
                                      ),
                                    ),
                                    VerticalDivider(
                                      endIndent: 2,
                                      indent: 2,
                                      width: 20,
                                      thickness: 1,
                                      color: Colors.blueGrey,
                                    ),
                                    Text(
                                      'Sports',
                                      style: TextStyle(
                                        color: orange,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Newsreader',
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.home,
              color: Colors.black,
            ),
            label: '',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.square_grid_2x2,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.search,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.bookmark,
              color: Colors.black,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: Colors.black,
            ),
            label: '',
          ),
        ],
      ),
    );
  }
}
