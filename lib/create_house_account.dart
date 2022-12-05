import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/list_of_house_accounts.dart';
import 'globals.dart' as globals;

class CreateHouseAccount extends StatefulWidget {
  const CreateHouseAccount({super.key});

  @override
  State<CreateHouseAccount> createState() => _CreateHouseAccountState();
}

class _CreateHouseAccountState extends State<CreateHouseAccount> {
  @override
  Widget build(BuildContext context) {
    var role = 'viewer';
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: const Text(
          'إنشاء حساب للمنزل',
          style: TextStyle(color: Colors.black),
        ),

        leading: //Icon(Icons.more_vert)
            const Text(''),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_forward_ios_rounded,
              color: Color.fromARGB(255, 81, 80, 80),
            ),
            onPressed: () {
              Navigator.of(context).pop();
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
                padding: const EdgeInsets.fromLTRB(6, 12, 0, 12),
                child: TextFormField(
                  // maxLength: 20,

                  textAlign: TextAlign.right,
                  decoration: const InputDecoration(
                    hintText: 'علامة * تمثل الحقول الإلزامية',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: InputBorder.none,
                  ),
                )),
            Container(
                padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text('*اسم المنزل', textAlign: TextAlign.right),
                      TextFormField(
                        // maxLength: 20,

                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: 'اسم المنزل',
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0)),
                        ),
                      )
                    ])),
            Container(
                padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      const Text('اعضاء المنزل ', textAlign: TextAlign.right),
                      TextFormField(
                        // maxLength: 20,

                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: ' الاسم ',
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0)),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        // maxLength: 20,

                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                          hintText: ' رقم الجوال ',
                          contentPadding:
                              const EdgeInsets.fromLTRB(20, 10, 20, 10),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(color: Colors.grey)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide:
                                  BorderSide(color: Colors.grey.shade400)),
                          errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(100.0),
                              borderSide: const BorderSide(
                                  color: Colors.red, width: 2.0)),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ])),
            Align(
              child: Container(
                  alignment: Alignment.bottomRight,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Expanded(
                              child: Text(
                                'Radio button 1',
                                textAlign: TextAlign.right,
                              ),
                            ),
                            Radio(
                                value: 'viewer',
                                groupValue: role,
                                onChanged: (value) {
                                  setState(() {
                                    role = value.toString();
                                  });
                                }),
                            // const Expanded(
                            //   child: Text(
                            //     'Radio button 1',
                            //     textAlign: TextAlign.right,
                            //   ),
                            // )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const Expanded(
                                child: Text(
                              'Radio 2',
                              textAlign: TextAlign.right,
                            )),
                            Radio(
                                value: 'editor',
                                groupValue: role,
                                onChanged: (value) {
                                  setState(() {
                                    role = value.toString();
                                  });
                                }),
                            // const Expanded(
                            //     child: Text(
                            //   'Radio 2',
                            //   textAlign: TextAlign.right,
                            // ))
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ),
      ),
      // bottomNavigationBar: GNav(
      //   gap: 8,
      //   onTabChange: (value) {
      //     if (value == 0) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) => const CreateHouseAccount()),
      //       );
      //       print(value);
      //     } else if (value == 1) {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //             builder: (context) => const ListOfHouseAccounts()),
      //       );
      //       print(value);
      //     }
      //   },
      //   backgroundColor: Colors.white,
      //   color: Colors.black,
      //   padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
      //   tabs: const [
      //     GButton(
      //       text: 'الملف الشخصي',
      //       icon: Icons.person,
      //     ),
      //     GButton(
      //       icon: Icons.house_rounded,
      //       text: 'منازلي',
      //     )
      //   ],
      // ),
      ///////////////////////////////////
      // bottomNavigationBar:
      //     NavigationBar(backgroundColor: Colors.white, destinations: const [
      //   NavigationDestination(
      //       icon: Icon(Icons.holiday_village), label: 'منازلي'),
      //   NavigationDestination(
      //       icon: Icon(Icons.person_outline_rounded), label: 'الملف الشخصي'),
      // ]),
      ///////////////////////////////

      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  //int index = 0;
  Widget buildBottomNavigation() {
    return BottomNavyBar(
      selectedIndex: global.index,
      onItemSelected: (index) {
        setState(
          () => global.index = index,
        );
        if (global.index == 0) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateHouseAccount()),
          );
        } else if (global.index == 1) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ListOfHouseAccounts()),
          );
        }
      },
      items: <BottomNavyBarItem>[
        BottomNavyBarItem(
          icon: const Icon(Icons.person_outline_rounded),
          // icon: IconButton(
          //     icon: const Icon(Icons.person_outline_rounded),
          //     onPressed: () {
          //       setState(
          //         () => this.index = index,
          //       );
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => const CreateHouseAccount()),
          //       );
          //     }),
          title: const Text(
            'الملف الشخصي',
            textAlign: TextAlign.center,
          ),
          activeColor: Colors.lightBlue,
        ),
        BottomNavyBarItem(
            icon: const Icon(Icons.holiday_village_rounded),
            // icon: IconButton(
            //     icon: const Icon(Icons.holiday_village_rounded),
            //     onPressed: () {

            //       setState(
            //         () => this.index = index,
            //       );
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(
            //             builder: (context) => const ListOfHouseAccounts()),
            //       );
            //     }),
            title: const Text(
              'منازلي',
              textAlign: TextAlign.center,
            ),
            activeColor: Colors.lightBlue),
      ],
      mainAxisAlignment: MainAxisAlignment.spaceAround,
    );
  }

  navigateRoutes() {
    switch (global.index) {
      case 0:
        {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ListOfHouseAccounts()),
          );
          break;
        }
      case 1:
        {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CreateHouseAccount()),
          );
          break;
        }
    }
  }
}

class global {
  static var index = 0;
}
