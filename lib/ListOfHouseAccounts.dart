import 'package:flutter/material.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class ListOfHouseAccounts extends StatefulWidget {
  const ListOfHouseAccounts({super.key});

  @override
  State<ListOfHouseAccounts> createState() => _ListOfHouseAccountsState();
}

class _ListOfHouseAccountsState extends State<ListOfHouseAccounts> {
  @override
  var realEstate = ['البيت', 'المزرعة', 'الاستراحة'];
  var selectedIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
          Text(
            '!مرحبًا هيفاء',
            textAlign: TextAlign.right,
          ),
        ]),
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
                  decoration: const InputDecoration(
                    hintText: 'قائمة منازلي',
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.add),
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
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                    contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
                      contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
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
      bottomNavigationBar: WaterDropNavBar(
        waterDropColor: Colors.blue,
        backgroundColor: Colors.white10,
        onItemSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: <BarItem>[
          BarItem(
            filledIcon: Icons.bookmark_rounded,
            outlinedIcon: Icons.bookmark_border_rounded,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
            filledIcon: Icons.email_rounded,
            outlinedIcon: Icons.email_outlined,
          ),
          BarItem(
            filledIcon: Icons.folder_rounded,
            outlinedIcon: Icons.folder_outlined,
          ),
        ],
      ),
    );
  }
}
