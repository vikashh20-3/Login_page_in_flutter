import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator App",
      theme: new ThemeData(primarySwatch: Colors.cyan),
      home: Homepage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: const Text("Calculator"),
      //     titleSpacing: 00.0,
      //     centerTitle: true,
      //     toolbarHeight: 60.2,
      //     toolbarOpacity: 0.8,
      //     backgroundColor: Colors.cyan,
      //   ),
      //   body: new Container(
      //     padding: EdgeInsets.all(30.0),
      //     child: new Column(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //         new Text(
      //           "Output :",
      //           style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
      //         ),
      //         new TextField(
      //           keyboardType: TextInputType.number,
      //           decoration: InputDecoration(hintText: "Enter your number"),
      //         ),
      //         new TextField(
      //           keyboardType: TextInputType.number,
      //           decoration: InputDecoration(hintText: "Enter your number"),
      //         ),
      //         new Padding(padding: const EdgeInsets.only(top: 20.0)),
      //         new Column(
      //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: <Widget>[
      //             new Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: new Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: <Widget>[
      //                   new ElevatedButton(
      //                     child: new Text("+"),
      //                     onPressed: () => {},
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(8.0),
      //                     child: new ElevatedButton(
      //                         onPressed: () => {}, child: new Text("-")),
      //                   ),
      //                 ],
      //               ),
      //             ),
      //             new Padding(
      //               padding: const EdgeInsets.all(8.0),
      //               child: new Row(
      //                 mainAxisAlignment: MainAxisAlignment.center,
      //                 children: <Widget>[
      //                   new ElevatedButton(
      //                     child: new Text("*"),
      //                     onPressed: () => {},
      //                   ),
      //                   Padding(
      //                     padding: const EdgeInsets.all(8.0),
      //                     child: new MaterialButton(
      //                         color: Colors.blueAccent,
      //                         onPressed: () => {},
      //                         child: new Text("/")),
      //                   ),
      //                 ],
      //               ),
      //             )
      //           ],
      //         )
      //       ],
      //     ),
      //   ),
      // ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  State createState() => HomepageState();
}

class HomepageState extends State<Homepage> {
  var num1, num2, sum;

  void doaddition() {
    setState(() {
      sum = num1 + num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        backgroundColor: Colors.cyan,
      ),
      body: new Container(
        padding: EdgeInsets.all(30.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output :$sum",
              style: TextStyle(color: Colors.redAccent, fontSize: 20.0),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter your number"),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter your number"),
            ),
            new Padding(padding: const EdgeInsets.only(top: 20.0)),
            new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new ElevatedButton(
                        child: new Text("+"),
                        onPressed: () => {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new ElevatedButton(
                            onPressed: () => {}, child: new Text("-")),
                      ),
                    ],
                  ),
                ),
                new Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      new ElevatedButton(
                        child: new Text("*"),
                        onPressed: () => {},
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: new MaterialButton(
                            color: Colors.blueAccent,
                            onPressed: () => {},
                            child: new Text("/")),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
