import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

import 'register.dart';

class devicesList extends StatefulWidget {
  const devicesList({
    Key? key,
  }) : super(key: key);
  _devicesListState createState() => _devicesListState();
}

class _devicesListState extends State<devicesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFFFFFFF),
          centerTitle: true,
          title: Text(
            'البيت',
            style: TextStyle(color: Colors.black87),
          ),
          leading: //Icon(Icons.more_vert)
              Text(''),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.black87,
              ),
              onPressed: () {
                clearForm();
                Navigator.of(context).pop();
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('الانتقال الى الصفحة السابقة')),
                  );
                });
              },
            ),
          ],
          // elevation: 15,
        ),
        body: Column(
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(6, 12, 0, 12),
                child: TextFormField(
                  // maxLength: 20,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    hintText: 'قائمة الأجهزة',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.add),
                  ),
                )),
            Expanded(
              child: loginForm(),
            )
          ],
        )
        // loginForm(),
        );
  }
}

class loginForm extends StatefulWidget {
  loginFormState createState() {
    return loginFormState();
  }
}

bool _passwordVisible = false;

class loginFormState extends State<loginForm> {
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;

  ScrollController _scrollController = ScrollController();
  List devices = ['المكيف', 'الثلاجة', 'المايكرويف', 'التلفاز', 'الفريزر'];
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      scrollDirection: Axis.vertical,
      itemCount: 5,
      itemBuilder: (context, index) {
        final item = devices[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  // What do i do here?
                },
                child: Container(
                  // margin: EdgeInsets.all(0),
                  height: 150,
                  width: 160,
                  decoration: BoxDecoration(
                    // border: Border.all(color: Color(0xff940D5A)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(17.0),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 15.0),
                        blurRadius: 20.0,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 20.0, right: 10.0, left: 30.0, bottom: 3.0),
                        child: Text(
                          "${devices[index]}",
                          style: TextStyle(
                              color: Color(0xff00315C),
                              fontSize: 20.0,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                          // textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: LiteRollingSwitch(
                          //initial value
                          value: true,
                          textOn: 'On',
                          textOff: 'Off',
                          colorOn: Colors.greenAccent,
                          colorOff: Colors.redAccent,
                          iconOn: Icons.done,
                          iconOff: Icons.remove_circle_outline,
                          textSize: 15.0,
                          onChanged: (bool state) {
                            //Use it to manage the different states
                            print('Current State of SWITCH IS: $state');
                          },
                          onTap: () {}, onSwipe: () {}, onDoubleTap: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
    // return Padding(
    //   padding: const EdgeInsets.only(top: 0, left: 15, right: 15, bottom: 15),
    //   child: ListView(children: <Widget>[
    //     Container(
    //         padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
    //         child: TextFormField(
    //           // maxLength: 20,
    //           textAlign: TextAlign.right,
    //           controller: usernameController,
    //           decoration: InputDecoration(
    //             hintText: 'الرمز',
    //             contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
    //             focusedBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(100.0),
    //                 borderSide: const BorderSide(color: Colors.grey)),
    //             enabledBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(100.0),
    //                 borderSide: BorderSide(color: Colors.grey.shade400)),
    //             errorBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(100.0),
    //                 borderSide:
    //                     const BorderSide(color: Colors.red, width: 2.0)),
    //             focusedErrorBorder: OutlineInputBorder(
    //                 borderRadius: BorderRadius.circular(100.0),
    //                 borderSide:
    //                     const BorderSide(color: Colors.red, width: 2.0)),
    //           ),
    //           validator: (value) {
    //             if (value == null || value.isEmpty || (value.trim()).isEmpty) {
    //               return 'Please enter a title.';
    //             }
    //             return null;
    //           },
    //         )),

    //     //button
    //     Container(
    //         child: ElevatedButton(
    //       onPressed: () {
    //         if (_formKey.currentState!.validate())
    //           //       Navigator.push(
    //           // context,
    //           // MaterialPageRoute(
    //           //   builder: (context) => homePage(),
    //           // ));
    //           clearForm();
    //         ScaffoldMessenger.of(context).showSnackBar(
    //           const SnackBar(
    //               content: Text('تم تسجيل دخولك بنجاح'),
    //               backgroundColor: Colors.green),
    //         );
    //       },
    //       child: Text('تحقق من الرمز'),
    //       style: ElevatedButton.styleFrom(
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(30),
    //         ),
    //       ),
    //     )),
    //   ]),
    // );
  }
}
