import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ComingSoon extends StatelessWidget {
  final images = [
    'assets/us.jpg',
    'assets/wonder.jpg',
    'assets/avatar.jpg',
    'assets/avengers.jpg',
    'assets/joker.jpg',


  ];
  final title = [
    'Us',
    'Wonder Woman',
    'Avatar',
    'Avenger\'s Endgame',
    'Joker',

  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 240,
        width: size.width * 0.85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: (){
                ///Movie Screen Open
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 180,
                    width: 150,
                    margin: EdgeInsets.only(left: 5, right: 5, bottom: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                        image: AssetImage(
                          images[index],
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    title[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.left,
                  ),

                ],
              ),
            );
          },
          itemCount: images.length,
        ));
  }
}

