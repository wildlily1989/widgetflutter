import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Widget textSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        'hello everyone,I am learning the flutter now and I hope that we can learn it together!',
        textDirection: TextDirection.ltr,
        softWrap: true,
      ),
    );

    Column buildButtonColumb(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
//        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Icon(
            icon,
            color: color,
            textDirection: TextDirection.ltr,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    Widget buttonSection = new Container(
      child: new Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumb(Icons.call, 'CALL'),
          buildButtonColumb(Icons.near_me, 'ROUTE'),
          buildButtonColumb(Icons.share, 'SHARE'),
        ],
      ),
    );

    Widget titleSection = new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        textDirection: TextDirection.ltr,
        children: [
          new Expanded(
            child: new Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    textDirection: TextDirection.ltr,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg,Switzerland',
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 8.0),
            child: new Icon(
              Icons.star,
              textDirection: TextDirection.ltr,
              color: Colors.red[500],
            ),
          ),
          new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 12.0),
            child: new Text(
              '41',
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );


    return new MaterialApp(
        home: new Scaffold(
          body: new ListView(
            children: [
              new Image.asset(
                'images/lake.jpg',
                height: 240.0,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          ),
        ),
    );

//    return new MaterialApp(
//      home: new imageSection(),
//    );
//    return new textSection();
//    return new buttonSection();
//    return new titleSection();
  }
}


class imageSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: [
          new Image.asset(
            'images/lake.jpg',
            height: 240.0,
            fit: BoxFit.cover,
          )
        ],
      ),
    );
    throw UnimplementedError();
  }
}

class textSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Text(
        'hello everyone,I am learning the flutter now and I hope that we can learn it together!',
        textDirection: TextDirection.ltr,
        softWrap: true,
      ),
    );
    throw UnimplementedError();
  }
}

class buttonSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column buildButtonColumb(IconData icon, String label) {
      Color color = Theme.of(context).primaryColor;
      return new Column(
//        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          new Icon(
            icon,
            color: color,
            textDirection: TextDirection.ltr,
          ),
          new Container(
            margin: const EdgeInsets.only(top: 8.0),
            child: new Text(
              label,
              textDirection: TextDirection.ltr,
              style: new TextStyle(
                  fontSize: 12.0, fontWeight: FontWeight.w400, color: color),
            ),
          )
        ],
      );
    }

    return new Container(
      child: new Row(
        textDirection: TextDirection.rtl,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildButtonColumb(Icons.call, 'CALL'),
          buildButtonColumb(Icons.near_me, 'ROUTE'),
          buildButtonColumb(Icons.share, 'SHARE'),
        ],
      ),
    );

    throw UnimplementedError();
  }
}

class titleSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.all(32.0),
      child: new Row(
        textDirection: TextDirection.ltr,
        children: [
          new Expanded(
            child: new Column(
              textDirection: TextDirection.ltr,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                new Container(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: new Text(
                    'Oeschinen Lake Campground',
                    textDirection: TextDirection.ltr,
                    style: new TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                new Text(
                  'Kandersteg,Switzerland',
                  textDirection: TextDirection.ltr,
                  style: new TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 8.0),
            child: new Icon(
              Icons.star,
              textDirection: TextDirection.ltr,
              color: Colors.red[500],
            ),
          ),
          new Container(
            alignment: Alignment.topCenter,
            padding: EdgeInsets.only(top: 12.0),
            child: new Text(
              '41',
              textDirection: TextDirection.ltr,
            ),
          ),
        ],
      ),
    );
    throw UnimplementedError();
  }
}
