import 'package:flutter/material.dart';
import 'package:hackathon/login.dart';
import 'package:hackathon/register.dart';

import 'accessSharedDashboard.dart';
import 'houseDevicesList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 147, 191, 128),
          )),
          scaffoldBackgroundColor: Colors.white,
          fontFamily: 'LamaSans',
          textTheme: TextTheme()),
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Center(
        // padding: const EdgeInsets.all(0),
        child: ListView(
          //  mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 50),
                child: Image.asset(
                  'assets/images/logo.png',
                  height: 200,
                  width: 200,
                )),
            // Image.network(
            //     'file:///Users/Leena/Desktop/hackathon/hackathon/assets/images/logo.jpg'),
            //button
            Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, bottom: 10, top: 20),
                child: Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => loginPage(),
                        ));
                  },
                  child: Text(
                    ' تسجيل الدخول',
                    style: TextStyle(fontSize: 17),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ))),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => register(),
                        ));
                  },
                  child: Text(' تسجيل جديد', style: TextStyle(fontSize: 17)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ))),
            Padding(
                padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
                child: Container(
                    child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => accsessShared(),
                        ));
                  },
                  child: Text('لوحة المنزل المشتركة',
                      style: TextStyle(fontSize: 17)),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ))),
            // Padding(
            //     padding: EdgeInsets.only(left: 20, right: 20, bottom: 10),
            //     child: Container(
            //         child: ElevatedButton(
            //       onPressed: () {
            //         Navigator.push(
            //             context,
            //             MaterialPageRoute(
            //               builder: (context) => devicesList(),
            //             ));
            //       },
            //       child: Text('قائمة الاجهزة', style: TextStyle(fontSize: 17)),
            //       style: ElevatedButton.styleFrom(
            //         shape: RoundedRectangleBorder(
            //           borderRadius: BorderRadius.circular(30),
            //         ),
            //       ),
            //     ))),
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
