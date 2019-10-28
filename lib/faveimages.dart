import 'package:flutter/material.dart';
import 'package:ui_projects/main.dart';

// refactoring the images

Container pictures(String imageUrl, lampName, lampPrice) {
  return Container(
    padding: EdgeInsets.only(right: 10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Stack(
          children: <Widget>[
            new ClipRRect(
              borderRadius: new BorderRadius.circular(14.0),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.fill,
              ),
            ),
            FavoriteWidget()
            //changeFavourite
          ],
        ),
        new LampInformation(lampName, lampPrice)
      ],
    ),
  );
}

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          icon: _isFavorited
              ? Icon(
                  Icons.favorite,
                  color: Colors.pink[500],
                )
              : Icon(
                  Icons.favorite_border,
                  color: Colors.pink[500],
                ),
          onPressed: _toggleFavorite),
    );
  }

  void _toggleFavorite() {
    setState(() {
      //if it is liked, set the bool value to true and change the icon
      if (!_isFavorited) {
        _isFavorited = true;
        print('The user liked this item!');
        //we are to add a line here that sends this information to the favorite menu
      } else {
        _isFavorited = false;
        print('This user unliked this item!');
        // we are to add a block of code that removes this information from the favortite menu
      }
    });
  }
}
