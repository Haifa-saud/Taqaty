import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  List text = [
    [
      'اجمالي استهلاك الطاقة',
      '150 kWh',
      'تم بلوغ 50% من هدف الشهر',
    ],
    ['فاتورة الكهرباء', '500.25 SR', '']
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'البيت',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
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
                  const SnackBar(content: Text('الانتقال الى الصفحة السابقة')),
                );
              });
            },
          ),
        ],
        elevation: 15,
      ),
      body: Container(
        transformAlignment: Alignment.topRight,
        child: ListView(padding: const EdgeInsets.all(20), children: [
          Container(
              padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
              child: Column(children: [
                TextFormField(
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    hintText: ' لوحة المعلومات',
                    hintStyle: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black),
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                    border: InputBorder.none,
                  ),
                ),
                TextFormField(
                  // maxLength: 20,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    hintText: ' شهر نوفمبر',
                    hintStyle: TextStyle(fontSize: 15),
                    contentPadding: EdgeInsets.fromLTRB(20, 0, 20, 10),
                    border: InputBorder.none,
                  ),
                ),
              ])),
          Container(
              padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
              child: Material(
                  elevation: 20,
                  borderRadius: BorderRadius.circular(30),
                  child: TextFormField(
                    readOnly: true,
                    maxLines: 4,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintText: 'الهدف لإجمالي استهلاك \n :الطاقة',
                      hintStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                      contentPadding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0)),
                      prefixIcon: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            '300 kWh',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w500),
                          )),
                    ),
                  ))),
          // GridView.builder(
          //   itemCount: 2,
          //crossAxixSpacing:3,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //       crossAxisCount: 2, crossAxisSpacing: 4.0, mainAxisSpacing: 4.0),
          //   itemBuilder: (BuildContext context, int index) {
          //     final item = text[index];

          //     return buildCard(item);
          //   },
          // )
        ]),
      ),
    );
  }

  Widget buildCard(List content) {
    return Container(
        child: GridTile(
      header: Text(content[0]),
      footer: Text(content[1]),
      child: Center(child: Text(content[2])),
    ));
  }
}
