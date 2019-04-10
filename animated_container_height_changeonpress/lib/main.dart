import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Ravi",
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  double _height = 60.0;
  double _width = 40.0;
  var _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Animation"),
        centerTitle: true,
        backgroundColor: _color,
      ),
      body: new Container(
        child: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              new AnimatedContainer(
                duration: Duration(seconds: 1),
                color: _color,
                width: _width,
                height: _height,

              ),
              new Divider(color: _color ,
              height: 10.0,

              )
 ,             new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: () {
                      setState(() {
                        _height=400.0;
                        _color=Colors.red;
                      });
                    },
                    child: new Icon(Icons.arrow_upward),
                  color: _color,),
                  new RaisedButton(onPressed: () {
                    setState(() {
                      _width = 100.0;
                      _color=Colors.blue   ;
                    });
                  },child: Icon(Icons.arrow_forward),color: _color,)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
