import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class Goal extends StatefulWidget {
  // final String userId;
  const Goal({super.key});
  @override
  goalState createState() => goalState();
}

class goalState extends State<Goal> {
  bool pop = false;
  final ScrollController _scrollController = ScrollController();
  String comment = '';

  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

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
                'حدد هدف لإجمالي استهلاك الطاقة',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(150, 0, 150, 0),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: "  kWh الهدف ",
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '  رجاء ادخل هدف';
                    }
                    return null;
                  },
                ),
              ),

              //*
              const SizedBox(
                height: 25,
              ),
              //*
              Container(
                  margin: EdgeInsets.all(30),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('تم تحديد اجمالي الاستهلاك ')),
                          );
                        }
                      },
                      child: Padding(
                          padding: EdgeInsets.fromLTRB(120, 15, 120, 15),
                          child: Text(
                            'حدد الهدف',
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
