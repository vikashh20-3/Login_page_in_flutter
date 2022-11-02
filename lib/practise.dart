import 'package:flutter/material.dart';
import 'dart:io';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Loginpage(),
        debugShowCheckedModeBanner: false,
        theme: new ThemeData(primarySwatch: Colors.teal));
  }
}

class Loginpage extends StatefulWidget {
  @override
  State createState() => new LoginpageState();
}

class LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.greenAccent,
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Image(
              image: new AssetImage("assets/image.jpeg"),
              fit: BoxFit.fill,
              color: Colors.black87,
              colorBlendMode: BlendMode.darken,
            ),
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new FlutterLogo(
                  size: 110.0,
                ),
                new Form(
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: new Theme(
                      data: new ThemeData(
                          brightness: Brightness.dark,
                          canvasColor: Colors.brown,
                          inputDecorationTheme: new InputDecorationTheme(
                            fillColor: Colors.blueGrey,
                          )),
                      child: new Column(
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              hintText: "Enter Your Email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          new TextFormField(
                            decoration: new InputDecoration(
                              hintText: "Enter Your Email",
                            ),
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                          ),
                          new MaterialButton(
                            color: Colors.teal,
                            textColor: Colors.white,
                            child: new Text("login to practise.dart"),
                            onPressed: () => {},
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
