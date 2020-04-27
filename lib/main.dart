import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';

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
          new FavoriteWidget(),
//          new Container(
//            alignment: Alignment.topCenter,
//            padding: EdgeInsets.only(top: 8.0),
//            child: new Icon(
//              Icons.star,
//              textDirection: TextDirection.ltr,
//              color: Colors.red[500],
//            ),
//          ),
//          new Container(
//            alignment: Alignment.topCenter,
//            padding: EdgeInsets.only(top: 12.0),
//            child: new Text(
//              '41',
//              textDirection: TextDirection.ltr,
//            ),
//          ),
        ],
      ),
    );

    return new MaterialApp(
      home: new Scaffold(
        body: new ListView(
          children: [
            new TapCParentWidget(),
//            new ParentWidget(),
//            new TapboxAWidget(),
//            new Image.asset(
//              'images/lake.jpg',
//              height: 240.0,
//              fit: BoxFit.cover,
//            ),
//            titleSection,
//            buttonSection,
//            textSection,
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

class FavoriteWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _favoriteWidgeState();
    throw UnimplementedError();
  }
}

class _favoriteWidgeState extends State<FavoriteWidget> {
  bool _isFavoriteed = true;
  int _favotiteCount = 41;

  void _toggleFavotite() {
    setState(() {
      if (_isFavoriteed) {
        _isFavoriteed = false;
        _favotiteCount--;
      } else {
        _isFavoriteed = true;
        _favotiteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        new Container(
          padding: new EdgeInsets.all(0.0),
          child: new IconButton(
            icon: (_isFavoriteed
                ? new Icon(Icons.star)
                : new Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavotite,
          ),
        ),
        new SizedBox(
          width: 18.0,
          child: new Container(
            child: new Text('$_favotiteCount'),
          ),
        )
      ],
    );
    throw UnimplementedError();
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

//使用手势，TapboxA管理自身状态
class TapboxAWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TapboxAWidgetState();
    throw UnimplementedError();
  }
}

class _TapboxAWidgetState extends State<TapboxAWidget> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: Center(
          child: new Text(
            _active ? 'activie' : 'inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
          color: _active ? Colors.green : Colors.grey,
        ),
      ),
    );
    throw UnimplementedError();
  }
}

//ParentWidget 为TapboxB管理状态。
//---------------------------------ParentWidget------------------------------------//
class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _parentWidgetState();
    throw UnimplementedError();
  }
}

class _parentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new TapboxB(active: _active, onChanged: _handleTapboxChanged),
      ),
    );
    throw UnimplementedError();
  }
}

//-------------------------------TapboxB---------------------------------------//
class TapboxB extends StatelessWidget {
  TapboxB({Key key, this.active: false, @required this.onChanged})
      : super(key: key);
  final bool active;
  final ValueChanged<bool> onChanged;

  void _handleTap() {
    onChanged(!active);
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            active ? 'active' : 'Inactive',
            style: new TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
        decoration: new BoxDecoration(
          color: active ? Colors.green : Colors.grey,
        ),
        width: 200.0,
        height: 200.0,
      ),
    );
    throw UnimplementedError();
  }
}

//混合管理
//----------------------------------ParentWidget------------------------------------//
class TapCParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _tapCParentWidget();
    throw UnimplementedError();
  }
}

class _tapCParentWidget extends State<TapCParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue) {
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new TapboxC(active: _active, onChanged: _handleTapboxChanged),
      ),
    );

    throw UnimplementedError();
  }
}

//---------------------------------TapboxC---------------------------------------//
class TapboxC extends StatefulWidget {
  TapboxC({Key key, this.active: false, @required this.onChanged})
      : super(key: key);

  final bool active;
  final ValueChanged<bool> onChanged;
  @override
  State<StatefulWidget> createState() {
    return new _TapboxCState();
    throw UnimplementedError();
  }
}

class _TapboxCState extends State<TapboxC> {
  bool _highlight = false;

  void _handleTapDown(TapDownDetails details) {
    setState(() {
      _highlight = true;
    });
  }

  void _handleTapUp(TapUpDetails details) {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTapCancel() {
    setState(() {
      _highlight = false;
    });
  }

  void _handleTap() {
    widget.onChanged(!widget.active);
  }

  @override
  Widget build(BuildContext context) {
    //this examle adds a green border on tap down.
    //On tap up,the square changes to the opposite state.
    return new GestureDetector(
      onTapDown: _handleTapDown,
      onTapUp: _handleTapUp,
      onTapCancel: _handleTapCancel,
      onTap: _handleTap,
      child: new Container(
        child: new Center(
          child: new Text(
            widget.active ? 'Activie' : "Inavtive",
            style: new TextStyle(fontSize: 22.0, color: Colors.white),
          ),
        ),
        width: 200.0,
        height: 200.0,
        decoration: new BoxDecoration(
            color: widget.active ? Colors.green : Colors.grey,
            border: _highlight
                ? new Border.all(
                    color: Colors.teal,
                    width: 10.0,
                  )
                : null),
      ),
    );
    throw UnimplementedError();
  }
}
