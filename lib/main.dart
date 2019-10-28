import 'package:flutter/material.dart';
import 'package:ui_projects/cardview.dart';
import 'package:ui_projects/faveimages.dart';
import 'package:ui_projects/informationScreen/detailedInformation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffDAF7A6),
          title: Text("UI Projects"),
        ),
        body: new Container(
          color: const Color(0xffECFCFD),
          child: Center(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: <Widget>[_titleSection, new Items(), _collections],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigation());
  }

  Widget _titleSection = Container(
    padding: EdgeInsets.all(20.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text.rich(
          TextSpan(
              text: 'Pendant ',
              style: TextStyle(fontSize: 28.0, fontFamily: 'RobotoMono'),
              children: <TextSpan>[
                TextSpan(
                    text: 'lamp',
                    style: TextStyle(
                        fontWeight: FontWeight.w800,
                        fontSize: 28.0,
                        fontFamily: 'Campton')),
              ]),
        ),
        IconButton(
            icon: Icon(Icons.search, color: Colors.pink),
            onPressed: () {
              print('The search button was clicked!');
            },
            iconSize: 28.0,
            padding: EdgeInsets.only(bottom: 6.0))
      ],
    ),
  );

  Widget _collections = Container(
      padding: EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
      child: Column(
        children: <Widget>[
          //contains the texts
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Collection',
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
                ),
                new GestureDetector(
                  onTap: () {
                    print("The 'View All' text was tapped!");
                  },
                  child: Text(
                    'View All',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
                  ),
                )
              ],
            ),
          ),

          //contains the card views
          Container(
            child: Column(
              children: <Widget>[
                cardView(
                  'Cece Pendant',
                  r'$345',
                  'NEW',
                  'assets/images/cloudy_lamp.jpg',
                ),
                cardView(
                  'Picia Pendant',
                  r'$213',
                  '-20%',
                  'assets/images/dragon_lamp.jpg',
                ),
                cardView(
                  'Botega Pendant',
                  r'$321',
                  '-40%',
                  'assets/images/paper_lamp.jpg',
                ),
                cardView(
                  'Cece Pendant II',
                  r'$635',
                  'NEW',
                  'assets/images/cloudy_lamp.jpg',
                ),
                cardView(
                  'Picia Pendant II',
                  r'$8,943',
                  '-75%',
                  'assets/images/dragon_lamp.jpg',
                ),
                cardView(
                  'Botega Pendant II',
                  r'$7,855',
                  '-80%',
                  'assets/images/paper_lamp.jpg',
                )
              ],
            ),
          )
        ],
      ));
}

class Items extends StatelessWidget {
  const Items({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20.0, bottom: 20.0, right: 20.0),
      child: Column(children: <Widget>[
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Most Popular',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
              new GestureDetector(
                onTap: () {
                  print("The 'View All' text was tapped!");
                },
                child: Text(
                  'View All',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 10.0),
          height: 300.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              GestureDetector(
                  //onTap, we should navigate to a new page!
                  onTap: () {
                    print('yo first ass is silly!');
                  },
                  child: pictures(
                      'assets/images/lamp.jpg', 'Bale Pendant', r'$349')),
              GestureDetector(
                //onTap, we should navigate to a new page!
                onTap: () {
                  print('yo second ass is silly!');
                },
                child: pictures(
                    'assets/images/paper_lamp.jpg', 'Botega Pendant', r'$321'),
              ),
              GestureDetector(
                //onTap, we should navigate to a new page!
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailedInformation()));
                },
                child: pictures('assets/images/flower_lamp.jpg',
                    'Flower Pendant', r'$1,521'),
              ),
              GestureDetector(
                //onTap, we should navigate to a new page!
                onTap: () {
                  print('yo fourth ass is still silly?');
                },
                child: pictures(
                    'assets/images/lamp.jpg', 'Bale Pendant II', r'$349'),
              ),
              GestureDetector(
                //onTap, we should navigate to a new page!
                onTap: () {
                  print('now you just dumb, bitch!');
                },
                child: pictures('assets/images/paper_lamp.jpg',
                    'Botega Pendant II', r'$921'),
              ),
              GestureDetector(
                //onTap, we should navigate to a new page!
                onTap: () {
                  print('time to sleep, maybe?');
                },
                child: pictures('assets/images/flower_lamp.jpg',
                    'Flower Pendant II', r'$2,165'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  static int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return new BottomNavigationBar(
        selectedItemColor: Colors.pink[700],
        selectedFontSize: 0.0,
        unselectedItemColor: Colors.pink[200],
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), title: Text('Favourite')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket), title: Text('Cart')),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), title: Text('Settings')),
        ],
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          print('Item $index was clicked!');
        });
  }
}

class LampInformation extends StatelessWidget {
  final String name, price;

  const LampInformation(
    this.name,
    this.price, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 5.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                name,
                textAlign: TextAlign.start,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w300),
              ),
              Text(
                price,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
            ]));
  }
}
