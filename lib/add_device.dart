import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

import 'share_Dash.dart';

class add_device extends StatefulWidget {
  // final String userId;
  const add_device({super.key});
  @override
  add_deviceState createState() => add_deviceState();
}

List<DropdownMenuItem<String>> get dropdownItems {
  List<DropdownMenuItem<String>> menuItems = [
    DropdownMenuItem(child: Text("LG TV"), value: "LG TV"),
    DropdownMenuItem(child: Text("Kenwood cooker"), value: "Kenwood cooker"),
    DropdownMenuItem(child: Text("SMEG toster"), value: "SMEG toster"),
    DropdownMenuItem(child: Text("HP printer"), value: "HP printer"),
  ];
  return menuItems;
}

void initState() {
  deviceController.text = 'v1';
}

TextEditingController deviceController = TextEditingController();

class add_deviceState extends State<add_device> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String selectedValue = "LG TV";
    String deviceChoice = '';
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 44, 97, 85),
        appBar: AppBar(
          centerTitle: true,
          title: const Text('البيت'),
          leading: //Icon(Icons.more_vert)
              PopupMenuButton(
            onSelected: (value) {
              if (value == 'share') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Share()),
                );
              }
              if (value == 'delete') {
                showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                    title: const Text(
                      "حذف المنزل",
                      textAlign: TextAlign.left,
                    ),
                    content: const Text(
                      "هل أنت متأكد من حذف حساب المنزل ؟",
                      textAlign: TextAlign.left,
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () {
                          Navigator.of(ctx).pop();
                        },
                        child: Container(
                          padding: const EdgeInsets.all(14),
                          child: const Text("الغاء"),
                        ),
                      ),
                      //log in ok button
                      TextButton(
                        onPressed: () {
                          // pop out
                        },
                        child: Container(
                          
                          padding: const EdgeInsets.all(14),
                          child: const Text("حذف",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 164, 10, 10))),
                        ),
                      ),
                    ],
                  ),
                );
              }
              // your logic
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  child: Text("مشاركة لوحة المعلومات "),
                  value: 'share',
                ),
                PopupMenuItem(
                  child: Text("حذف حساب المنرل",
                      style:
                          TextStyle(color: Color.fromARGB(255, 167, 32, 32))),
                  value: 'delete',
                ),
              ];
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              onPressed: () {
                setState(() {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('الانتقال الى الصفحة السابقة')),
                  );
                });
              },
            ),
          ],
          elevation: 35,
        ),
        body: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(
                    height: 35,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'إضافة جهاز',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: const Text(
                      'الأجهزة المكتشفة',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),

                  // DropdownButton<String>(
                  //   value: dropdownValue,
                  //   icon: const Icon(Icons.arrow_drop_down),
                  //   elevation: 16,
                  //   style: const TextStyle(color: Color.fromARGB(255, 2, 1, 3)),
                  //   underline: Container(
                  //     height: 2,
                  //     color: const Color.fromARGB(255, 7, 9, 32),
                  //   ),
                  //   onChanged: (String? value) {
                  //     // This is called when the user selects an item.
                  //     setState(() {
                  //       dropdownValue = value!;
                  //     });
                  //   },
                  //   items: list.map<DropdownMenuItem<String>>((String value) {
                  //     return DropdownMenuItem<String>(
                  //         value: value,
                  //         child: Padding(
                  //           padding: const EdgeInsets.fromLTRB(170, 10, 170, 10),
                  //           child: Text(value,
                  //               style: const TextStyle(
                  //                   fontWeight: FontWeight.bold, fontSize: 18)),
                  //         ));
                  //   }).toList(),
                  // ),
                  const SizedBox(
                    height: 20,
                  ),
                  // DropdownButton(
                  //     onChanged: (String? newValue) {
                  //       print(newValue);
                  //       setState(() {
                  //         selectedValue = newValue!;
                  //       });
                  //       print(selectedValue);
                  //     },
                  //     value: selectedValue,
                  //     items: dropdownItems),
                  // Padding(
                  //   padding: EdgeInsets.only(left: 20, right: 20),
                  //   child: DecoratedBox(
                  //       decoration: BoxDecoration(
                  //         border: Border.all(color: Colors.black38, width: 2),
                  //         borderRadius: BorderRadius.circular(50),
                  //       ),
                  //       child: Padding(
                  //           padding: const EdgeInsets.only(left: 60, right: 30),
                  //           child: DropdownButton<String>(
                  //             value: deviceController.text,
                  //             items: const [
                  //               DropdownMenuItem(
                  //                 child: Text("خيار ١"),
                  //                 value: "v1",
                  //               ),
                  //               DropdownMenuItem(
                  //                   child: Text("خيار ٢"), value: "v2"),
                  //               DropdownMenuItem(
                  //                 child: Text("خيار ٣"),
                  //                 value: "v3",
                  //               )
                  //             ],
                  //             onChanged: (String? value) {
                  //               print(value);
                  //               // This is called when the user selects an item.
                  //               setState(() {
                  //                 deviceController.text = value!;
                  //               });
                  //               print(deviceController.text);
                  //             },
                  //             icon: const Padding(
                  //                 padding: EdgeInsets.only(left: 20),
                  //                 child: Icon(Icons.arrow_circle_down_sharp)),
                  //             // iconEnabledColor: Colors.white, //Icon color
                  //             style: const TextStyle(
                  //                 //color: Color(bl),
                  //                 fontSize: 20 //font size on dropdown button
                  //                 ),

                  //             //dropdown background color
                  //             underline: Container(), //remove underline
                  //             isExpanded: true, //make true to make width 100%
                  //           ))),
                  // ),
                  Padding(
                    padding: EdgeInsets.only(left: 20, right: 20),
                    child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 13.0, horizontal: 15),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          border: OutlineInputBorder(),
                        ),
                        validator: (value) =>
                            value == null ? "Select a country" : null,
                        value: selectedValue,
                        onChanged: (String? newValue) {
                          print(newValue);
                          setState(() {
                            selectedValue = newValue!;
                          });
                          print(selectedValue);
                        },
                        items: dropdownItems),
                  ),

                  //*
                  const SizedBox(
                    height: 40,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 35),
                    child: Text(
                      'اسم الجهاز',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    child: TextFormField(
                      textAlign: TextAlign.right,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 15),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: " اسم الجهاز",
                      ),
                      // The validator receives the text that the user has entered.
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return '  رجاء ادخل اسم الجهاز ';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  //submit button
                  Container(
                      padding: const EdgeInsets.only(left: 60.0, right: 60.0),
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content: Text('تم اضافة الجهاز ')),
                              );
                            }
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0),
                          ))),
                          child: const Padding(
                              padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                              child: Text(
                                'أضف الجهاز',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              )))),
                ],
              ),
            )));
  }
}
