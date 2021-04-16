import 'package:appophilia_news_app/Classes/getNews.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appophilia News App',
      home: LandingPage(),
    );
  }
}

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  double _screenWidth, _screenHeight;
  News NewsObject = News();
  List<Widget> newsArticles = [];
  bool isLoading = true;
  void getArticles() async {
    List<Article> articles = await NewsObject.getNews();
    for (Article x in articles){
      newsArticles.add(
        Column(
          children: [
            Image(
                image: NetworkImage('${x.urlToImage}'),
                width: 302,
            ),
            ListTile(
              title: Text(
                "${x.title}",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontFamily: "Roboto",
                  fontWeight: FontWeight.w700,
                ),
              ),
              subtitle: Row(
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    color: Color(0xffb6b6b6),
                  ),
                  Text(
                    " ${x.publshedAt}",
                    style: TextStyle(
                      color: Color(0xffb6b6b6),
                      fontSize: 16,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              trailing: Icon(Icons.bookmark_border_rounded,
                  color: Color(0xffb6b6b6)),
            )
          ],
        )
      );
      newsArticles.add(SizedBox(height: 20,));
    }
    setState(() {
      isLoading = false;
    });
  }
  @override
  void initState() {
    getArticles();
  }
  @override
  Widget build(BuildContext context) {
    _screenWidth = MediaQuery.of(context).size.width;
    _screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color(0xffF8F8FA),
          body: Container(
            width: _screenWidth,
            height: _screenHeight,
            child: Stack(
              children: [
                Positioned(
                  top: 52,
                  left: 20,
                  child: SizedBox(
                    width: 120,
                    height: 36,
                    child: Text(
                      "Octopus",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 18,
                  child: SizedBox(
                    width: 264,
                    height: 103,
                    child: Text(
                      "Hello,\nMariah Carey",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 328,
                  top: 59,
                  child: Image(image: AssetImage('assets/icons/calendar.png')),
                ),
                Positioned(
                  top: 235,
                  left: 22,
                  child: Container(
                    width: 230,
                    height: 55,
                    child: Stack(
                      children: [
                        Container(
                          width: 230,
                          height: 55,
                          child: Stack(
                            children: [
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: SizedBox(
                                    width: 227,
                                    height: 55,
                                    child: Material(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(25),
                                    ),
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                    width: 110,
                                    height: 21,
                                    child: Text(
                                      "Activities",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xffb6b6b6),
                                        fontSize: 16,
                                        fontFamily: "Roboto",
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned.fill(
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              width: 130,
                              height: 55,
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 130,
                                    height: 55,
                                    child: Material(
                                      color: Color(0xff2074df),
                                      borderRadius: BorderRadius.circular(25),
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                          top: 10,
                                          bottom: 9,
                                        ),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 110,
                                              height: 21,
                                              child: Text(
                                                "Latest News",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                  fontFamily: "Roboto",
                                                  fontWeight: FontWeight.w700,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 245,
                    left: 326,
                    child: Image(image: AssetImage('assets/icons/Filter.png'))),
                Positioned(
                    top: 315,
                    left: 22,
                    child: Container(
                      width: 352,
                      height: 378,
                      padding: EdgeInsets.all(10),
                      child: isLoading ? Center(child: CircularProgressIndicator()) : ListView(
                        children: [
                        Container(
                          child: Column(
                            children: newsArticles,
                          ),
                        )
                      ]),
                    ))
              ],
            ),
          )),
    );
  }
}
