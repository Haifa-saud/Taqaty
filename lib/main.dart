import 'package:flutter/material.dart';
import 'package:hackathon/login.dart';
import 'package:hackathon/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

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
                  'assets/images/logo.jpg',
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
                  child: Text(' تسجيل الدخول'),
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
                  child: Text(' تسجيل جديد'),
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
                  child: Text('لوحة المنزل المشتركة'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                ))),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
