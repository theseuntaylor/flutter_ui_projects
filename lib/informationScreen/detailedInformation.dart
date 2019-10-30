import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:ui_projects/faveimages.dart';

class DetailedInformation extends StatefulWidget {
  @override
  _DetailedInformationState createState() => _DetailedInformationState();
}

class _DetailedInformationState extends State<DetailedInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffDAF7A6),
          title: Text("UI Projects"),
        ),
        body: SlidingPanel());
  }
}

class SlidingPanel extends StatelessWidget {
  const SlidingPanel({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      renderPanelSheet: false,
      panel: _floatingPanel(),
      collapsed: _floatingCollapsed(),
      panelSnapping: true,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(25.0), topLeft: Radius.circular(25.0)),
      maxHeight: 9 * (MediaQuery
          .of(context)
          .size
          .height) / 16,
      body: new Container(
        margin: EdgeInsets.all(5.0),
        child: Center(child: ImageOverView()),
      ),
    );
  }
}

class ImageOverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool _isFavorited = false;
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset('assets/images/paper_lamp.jpg', fit: BoxFit.fill,),
              IconButton(
                  icon: _isFavorited
                      ? Icon(
                    Icons.favorite,
                    color: Colors.pink[500],
                  )
                      : Icon(
                    Icons.favorite_border,
                    color: Colors.pink[500],
                  ),
                  onPressed: () {
                    FavoriteWidget();
                  }),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _floatingCollapsed() {
  return Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24.0), topRight: Radius.circular(24.0)),
    ),
    margin: const EdgeInsets.fromLTRB(24.0, 24.0, 24.0, 0.0),
    child: Center(
      child: Text(
        "Swipe up for more information",
        style: TextStyle(color: Colors.white),
      ),
    ),
  );
}

Widget _floatingPanel() {
  return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(24.0)),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ]),
      margin: const EdgeInsets.all(24.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(15.0),
            child: details(),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Properties("36", "kwt", Icons.power),
                Properties("15", "watts", Icons.lightbulb_outline),
                Properties("1.8", "meters", Icons.straighten),
                Properties("0.3", "meters", Icons.straighten),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
            child: Text(
              "The decision of making 1/4 transparent glass and 3/4 "
                  "sandlasted glass rises from the necessity of focusing the"
                  " direct light on the bottom side and concentrate it on the "
                  "beneath surface while maintaining an indirect and diffuse "
                  "lighting on the mid top side.",
              softWrap: true,
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          Container(
              margin: EdgeInsets.only(left: 15.0, right: 15.0, bottom: 15.0),
              child: ButtonsRow())
        ],
      ));
}

class details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            Text(
              "Something",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
            ),
            Text(
              "Some price",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
        Column(
          children: <Widget>[
            Text(
              "Something",
              textAlign: TextAlign.start,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
            ),
            Text(
              "Some price",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ],
    );
  }
}

class Properties extends StatelessWidget {
  final String weirdNumber, siUnits;
  final IconData icon;

  const Properties(this.weirdNumber,
      this.siUnits,
      this.icon, {
        Key key,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      child: Column(
        children: <Widget>[
          Container(
            width: 55.0,
            child: Column(
              children: <Widget>[Icon(icon), Text(weirdNumber), Text(siUnits)],
            ),
          )
        ],
      ),
    );
  }
}

class ButtonsRow extends StatefulWidget {
  @override
  _ButtonsRowState createState() => _ButtonsRowState();
}

class _ButtonsRowState extends State<ButtonsRow> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    double yourWidth = width * 0.78;
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Center(
              child: Container(
                width: yourWidth,
                margin: EdgeInsets.only(
                  left: 7.5,
                ),
                child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                    ),
                    color: Color(0xffECFCFD),
                    padding: EdgeInsets.all(15.0),
                    child: Text('Buy Now'),
                    onPressed: () {
                      print("this shit works");
                    }),
              ))
        ],
      ),
    );
  }
}