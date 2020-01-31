import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ButtonsApp(),
    );
  }
}

class ButtonsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Buttons'),
      ),
      body: Center(
        child: Container(
          width: 250,
          child: Column(
            children: <Widget>[
              flatButton(),
              SizedBox(height: 20.0,),
              flatButtonWithIcon(),
              SizedBox(height: 20.0,),
              raisedButton(),
              SizedBox(height: 20.0,),
              raisedButtonWithIcon(),
              SizedBox(height: 20.0,),
              iconButton(),
              SizedBox(height: 20.0,),
              outlineButton(),
              SizedBox(height: 20.0,),
              outlineButtonWithIcon(),
              SizedBox(height: 20.0,),
              customButton(),
              SizedBox(height: 20.0,),
            ],
          ),
        ),
      ),
      floatingActionButton: floatingActionButton(),
    );
  }

  Widget flatButton() {
    return FlatButton(
      onPressed: () { print('Soy un boton :v'); },
      child: Text('FlatButton'),
      textColor: Colors.blue,
    );
  }

  Widget flatButtonWithIcon() {
    return FlatButton.icon(
      onPressed: () { print('Soy un boton :');},
      icon: Icon(Icons.face),
      label: Text('Flat Button with Icon'),
      textColor: Colors.blue,
    );
  }

  Widget raisedButton() {
    return RaisedButton(
      onPressed: () { print('Soy un boton :v');},
      child: Text('RaisedButton'),
      color: Colors.red,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(20.0),
      ),
    );
  }

  Widget raisedButtonWithIcon() {
    return RaisedButton.icon(
      onPressed: () { print('Soy un boton :v'); },
      label: Text('Raised Button With Icon'),
      icon: Icon(Icons.face),
      color: Colors.red,
      textColor: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }

  Widget floatingActionButton() {
    return FloatingActionButton(
      onPressed: () { print('Soy un boton'); },
      child: Icon(Icons.add),
    );
  }

  Widget iconButton() {
    return IconButton(
      onPressed: () { print('Soy un iconButton :v');},
      icon: Icon(Icons.group_add),
      color: Colors.green,
      iconSize: 75.0,
    );
  }  

  Widget outlineButton() {
    return OutlineButton(
      onPressed: () { print('Outline Button :v'); },
      child: Text('OutlineButton'),
      textColor: Colors.deepPurple,
    );
  }

  Widget outlineButtonWithIcon() {
    return OutlineButton.icon(
      onPressed: () { print('Boton'); },
      label: Text('Outline Button With Icon'),
      icon: Icon(Icons.face),
      textColor: Colors.deepPurple,
    );
  }

  Widget customButton() {
    return InkWell(
      child: Container(
        height: 50.0,
        width: 100.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: Colors.indigo,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 0.8,
              color: Colors.grey,
              spreadRadius: 0.8,
              offset: Offset(8, 8)
            )
          ]
        ),
        child: Center(
          child: Icon(Icons.face,
           color: Colors.white,
          )
        ),
      ) ,
      onTap: () {},
    );
  }
}