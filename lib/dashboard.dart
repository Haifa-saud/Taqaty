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
        child: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Container(
                padding: const EdgeInsets.fromLTRB(6, 0, 0, 0),
                child: Column(children: [
                  TextFormField(
                    // maxLength: 20,
                    readOnly: true,
                    textAlign: TextAlign.right,
                    decoration: const InputDecoration(
                      hintText: ' لوحة المعلومات',
                      hintStyle:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                child: TextFormField(
                  // maxLength: 20,

                  readOnly: true,
                  maxLines: 4,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'الهدف لإجمالي استهلاك \n :الطاقة',
                    hintStyle: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w500),
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(0),
                        borderSide: const BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40.0),
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
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
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
                child: TextFormField(
                  // maxLength: 20,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'المزرعة',
                    contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: const BorderSide(color: Colors.grey)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide: BorderSide(color: Colors.grey.shade400)),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0)),
                    focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100.0),
                        borderSide:
                            const BorderSide(color: Colors.red, width: 2.0)),
                    prefixIcon: const Icon(Icons.arrow_back_ios),
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
                child: TextFormField(
                  // maxLength: 20,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                      hintText: 'الاستراحة',
                      contentPadding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide: const BorderSide(color: Colors.grey)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      errorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0)),
                      focusedErrorBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(100.0),
                          borderSide:
                              const BorderSide(color: Colors.red, width: 2.0)),
                      prefixIcon: const Icon(Icons.arrow_back_ios)),
                )),
          ],
        ),
      ),
    );
  }
}
