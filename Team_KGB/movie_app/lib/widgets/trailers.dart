import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Trailers extends StatelessWidget {
  final images = [
    'assets/avenge.jpg',
    'assets/highway.jpg',
    'assets/enders.jpg',
    'assets/alladin.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
        height: 200,
        width: size.width *0.85,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Container(
              height: 180,
              width: size.width*0.75,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                image: DecorationImage(
                  image: AssetImage(
                    images[index],
                  ),
                  fit:BoxFit.cover,
                  alignment: Alignment.center,
                  repeat: ImageRepeat.noRepeat,

                ),
              ),
              child: Center(
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.white30,
                  child: IconButton(
                    icon: Icon(Icons.play_circle_outline_sharp,color: Colors.white,size: 32,),
                    onPressed: (){},
                    alignment: Alignment.center,
                  ),
                ),
              ),
            );
          },
          itemCount: images.length,
        ));
  }
}

