import 'package:hacathon/add_device.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';

class profile extends StatefulWidget {
  // final String userId;
  const profile({super.key});
  @override
  profileState createState() => profileState();
}

class profileState extends State<profile> {
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('مرحبا'),
          leading: const Text(""),
          actions: const [
            // IconButton(
            //   icon: const Icon(Icons.arrow_forward_ios),
            //   onPressed: () {
            //     setState(() {
            //
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => const add_device()),
            //       );
            //     });
            //   },
            // ),
            Text(""),
          ],
          elevation: 35,
        ),
        body: Form(
          key: _formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 55,
              ),
              const Text(
                'مشاركة لوحة معلومات المنزل ',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextFormField(
                  textAlign: TextAlign.right,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    LengthLimitingTextInputFormatter(10),
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: InputDecoration(
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 13.0, horizontal: 15),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    filled: true,
                    hintStyle: TextStyle(color: Colors.grey[800]),
                    hintText: " رقم الهاتف",
                  ),
                  // The validator receives the text that the user has entered.
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return '  رجاء ادخل رقم هاتف';
                    }
                    if (value.length < 10) {
                      return '  رجاء ادخل رقم هاتف صحيح';
                    }
                    return null;
                  },
                ),
              ),

              //*
              const SizedBox(
                height: 75,
              ),
              //*
              Container(
                  margin: const EdgeInsets.all(30),
                  child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content:
                                    Text('تمت مشاركة لوحة معلومات المنزل')),
                          );
                        }
                      },
                      child: const Padding(
                          padding: EdgeInsets.fromLTRB(90, 15, 90, 15),
                          child: Text(
                            'شارك',
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
