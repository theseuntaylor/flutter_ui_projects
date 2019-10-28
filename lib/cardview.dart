import 'package:flutter/material.dart';

Container cardView(String lampName, lampPrice, lampOffer, lampUrl) {
  return Container(
      child: Card(
          child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[
      Container(
        child: Row(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(10.0),
              child: Image.asset(
                lampUrl,
                height: 64.0,
                width: 64.0,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    lampName,
                    style: TextStyle(fontSize: 20.0),
                  ),
                  Text(
                    lampPrice,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ClipRRect(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(8.0), topLeft: Radius.circular(10.0)),
        child: Container(
          color: Colors.pink,
          margin: EdgeInsets.only(top: 15.0),
          padding:
              EdgeInsets.only(left: 5.0, right: 10.0, top: 2.5, bottom: 2.5),
          child: new GestureDetector(
            onTap: () {
              print("The 'Lamp Offer' text was tapped!");
            },
            child: Text(
              lampOffer,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300),
            ),
          ),
        ),
      )
    ],
  )));
}
