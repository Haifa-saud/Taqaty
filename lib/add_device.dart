import 'package:dropdown_textfield/dropdown_textfield.dart';

import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class add_device extends StatefulWidget {
  // final String userId;
  const add_device({super.key});
  @override
  add_deviceState createState() => add_deviceState();
}

const List<String> list = <String>['خيار ١', 'خيار ٢', 'خيار ٣', 'خيار ٤'];

class add_deviceState extends State<add_device> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    String dropdownValue = list.first;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('البيت'),
          leading: //Icon(Icons.more_vert)
              PopupMenuButton(
            onSelected: (value) {
              // your logic
            },
            itemBuilder: (BuildContext bc) {
              return const [
                PopupMenuItem(
                  child: Text("خيار ١"),
                  value: '/hello',
                ),
                PopupMenuItem(
                  child: Text("خيار ٢"),
                  value: '/about',
                ),
                PopupMenuItem(
                  child: Text("خيار ٣"),
                  value: '/contact',
                )
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
          child: Column(
            children: [
              const SizedBox(
                height: 35,
              ),
              Text(
                'إضافة جهاز',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'الأجهزة المكتشفة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              // Padding(
              //   padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
              //   child: DropDownTextField(
              //     initialValue: 'اختر جهاز',
              //     //controller: _cnt,
              //     clearOption: false,
              //     enableSearch: false,
              //     validator: (value) {
              //       if (value == null) {
              //         return "Required field";
              //       } else {
              //         return null;
              //       }
              //     },
              //     dropDownItemCount: 4,
              //     dropDownList: const [
              //       DropDownValueModel(name: 'اختر جهاز', value: "value1"),
              //       DropDownValueModel(name: 'جهاز ١', value: "value2"),
              //       DropDownValueModel(name: 'جهاز ٢', value: "value3"),
              //       DropDownValueModel(name: 'جهاز ٣', value: "value4"),
              //     ],
              //     onChanged: (val) {},
              //   ),
              //   // The validator receives the text that the user has entered.
              // ),
              const SizedBox(
                height: 20,
              ),
              DropdownButton<String>(
                value: dropdownValue,
                icon: const Icon(Icons.arrow_drop_down),
                elevation: 16,
                style: const TextStyle(color: Color.fromARGB(255, 2, 1, 3)),
                underline: Container(
                  height: 2,
                  color: Color.fromARGB(255, 7, 9, 32),
                ),
                onChanged: (String? value) {
                  // This is called when the user selects an item.
                  setState(() {
                    dropdownValue = value!;
                  });
                },
                items: list.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(170, 10, 170, 10),
                        child: Text(value,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ));
                }).toList(),
              ),

              const SizedBox(
                height: 20,
              ),

              //*
              Text(
                'اسم الجهاز',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                child: TextFormField(
                  textAlign: TextAlign.right,

                  decoration: InputDecoration(
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
                height: 20,
              ),
              //submit button
              Container(
                  margin: EdgeInsets.all(30),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('تم اضافة الجهاز ')),
                          );
                        }
                      },
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                          child: Text(
                            'أضف الجهاز',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          )),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ))))),
            ],
          ),
        ));
  }
}
