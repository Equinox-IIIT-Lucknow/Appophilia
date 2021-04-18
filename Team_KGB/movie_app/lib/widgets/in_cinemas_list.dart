import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class InCinemas extends StatelessWidget {
  final images = [
    'assets/avengers.jpg',
    'assets/joker.jpg',
    'assets/us.jpg',
    'assets/wonder.jpg',
    'assets/avatar.jpg',

  ];
  final title = [
    'Avenger\'s Endgame',
    'Joker',
    'Us',
    'Wonder Woman',
    'Avatar',
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
                  SmoothStarRating(
                    // rating: v,
                    onRated: (rating){
                      print(rating);
                    },
                    isReadOnly: false,
                    size: 15,
                    filledIconData: Icons.star,
                    halfFilledIconData: Icons.star_half,
                    defaultIconData: Icons.star_border,
                    color: Theme.of(context).accentColor,
                    borderColor: Theme.of(context).accentColor,
                    starCount: 5,
                    allowHalfRating: true,


                  ),
                ],
              ),
            );
          },
          itemCount: images.length,
        ));
  }
}

// class ListTile extends StatelessWidget {
//   int index;
//   ListTile(this.index);
//   @override
//   Widget build(BuildContext context) {
//     final size = MediaQuery.of(context).size;
//
//     return
//   }
// }
