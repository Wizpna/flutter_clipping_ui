import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: new Text('Flutter Clipping'),
        leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: () {})
        ],
      ),*/
      body: new ClipPath(
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Container(
              decoration: BoxDecoration(
                color: Colors.white, //(0xff622f74)
                gradient: LinearGradient(
                  colors: [
                    Colors.red[800],
                    Colors.black87,
                    Colors.deepPurple[600]
                  ], //(0xff2159db) //(0xffea3556)
                  begin: Alignment.centerRight,
                  end: Alignment(-1.0, -1.0),
                ),
              ),
            ),
            new Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: new Container(
                    width: 200.0,
                    height: 200.0,
                    decoration: new BoxDecoration(
                      shape: BoxShape.circle,
                      image: new DecorationImage(
                        fit: BoxFit.fill,
                        image: new AssetImage('images/my.jpg'),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Text(
                    'Amadi Promise',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Text(
                    'Flutter Developer',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 75.0, top: 8.0),
                  child: new Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      Text(
                        'Rad5 Tech Hub',
                        textAlign: TextAlign.center,
                        style: new TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: new Text(
                    'Aba, Abia State',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            )
          ],
        ),
        clipper: HeaderColor(),
      ),
    );
  }
}

class HeaderColor extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 100);
    path.lineTo(size.width, size.height - 240);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
