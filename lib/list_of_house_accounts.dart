import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';

import 'create_house_account.dart';

class ListOfHouseAccounts extends StatefulWidget {
  const ListOfHouseAccounts({super.key});

  @override
  State<ListOfHouseAccounts> createState() => _ListOfHouseAccountsState();
}

class _ListOfHouseAccountsState extends State<ListOfHouseAccounts> {
  int selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '!مرحبًا هيفاء',
          textAlign: TextAlign.right,
        ),
        leading: const Text(''),
        centerTitle: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(40),
            right: Radius.zero,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 119, 201, 239),
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
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'قائمة منازلي',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: InputBorder.none,
                    prefixIcon: IconButton(
                      icon: const Icon(
                          // Based on passwordVisible state choose the icon
                          Icons.add),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CreateHouseAccount()),
                        );
                      },
                    ),
                  ),
                )),
            // // ListTile(
            // //   title: Text('قائمة منازلي'),
            // // )
            // const SizedBox(
            //   height: 30,
            // ),

            //     child: Row(children: const [
            //   Icon(Icons.add),
            //   Text(
            //     'قائمة منازلي',
            //     textAlign: TextAlign.center,
            //   ),
            // ])),

            // const SizedBox(
            //   height: 20,
            // ),
            // Container(
            //     decoration: BoxDecoration(
            //       border:
            //           Border.all(color: Color.fromARGB(255, 177, 177, 177)),
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(30),
            //       ),
            //     ),
            //     height: 50,
            //     child: Row(children: const [
            //       Icon(Icons.arrow_back_ios,
            //           color: Color.fromARGB(255, 106, 105, 105)),
            //       Text(
            //         'البيت',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             fontSize: 25,
            //             color: Color.fromARGB(255, 106, 105, 105)),
            //       ),
            //     ])),
            // const SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     decoration: BoxDecoration(
            //       border:
            //           Border.all(color: Color.fromARGB(255, 177, 177, 177)),
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(30),
            //       ),
            //     ),
            //     height: 50,
            //     child: Row(children: const [
            //       Icon(Icons.arrow_back_ios,
            //           color: Color.fromARGB(255, 106, 105, 105)),
            //       Text(
            //         'المزرعة',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             fontSize: 25,
            //             color: Color.fromARGB(255, 106, 105, 105)),
            //       ),
            //     ])),

            // const SizedBox(
            //   height: 10,
            // ),
            // Container(
            //     decoration: BoxDecoration(
            //       border:
            //           Border.all(color: Color.fromARGB(255, 177, 177, 177)),
            //       borderRadius: const BorderRadius.all(
            //         Radius.circular(30),
            //       ),
            //     ),
            //     height: 50,
            //     child: Row(children: const [
            //       Icon(Icons.arrow_back_ios,
            //           color: Color.fromARGB(255, 106, 105, 105)),
            //       Text(
            //         'الاستراحة',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //             fontSize: 25,
            //             color: Color.fromARGB(255, 106, 105, 105)),
            //       ),
            //     ]))

            Container(
                padding: const EdgeInsets.fromLTRB(6, 12, 6, 12),
                child: TextFormField(
                  // maxLength: 20,
                  readOnly: true,
                  textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    hintText: 'البيت',
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

      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  int index = 0;
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
    switch (index) {
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
