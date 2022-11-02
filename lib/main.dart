import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:interntask/dashboardpage.dart';
import 'package:interntask/herospage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Container tempcontainer = Container();
  // Container container1 = Container(
  //   child: Column(
  //     children: [
  //       const Text(
  //         "Top[ Heros",
  //         style: TextStyle(fontSize: 20),
  //       ),
  //       Row(
  //         mainAxisAlignment: MainAxisAlignment.spaceAround,
  //         children: [
  //           TextButton(
  //               style: ButtonStyle(
  //                   foregroundColor: MaterialStateProperty.resolveWith<Color>(
  //                       (Set<MaterialState> states) {
  //                     if (states.contains(MaterialState.hovered)) {
  //                       return Colors.white;
  //                     }
  //                     return Colors.black;
  //                   }),
  //                   backgroundColor: MaterialStateProperty.all(
  //                       const Color.fromARGB(255, 189, 182, 182)),
  //                   overlayColor: MaterialStateColor.resolveWith(
  //                       (states) => const Color.fromARGB(255, 5, 42, 105))),
  //               onPressed: () {},
  //               child: const Text(
  //                 "Bombasto",
  //               )),
  //           TextButton(
  //               style: ButtonStyle(
  //                   foregroundColor: MaterialStateProperty.resolveWith<Color>(
  //                       (Set<MaterialState> states) {
  //                     if (states.contains(MaterialState.hovered)) {
  //                       return Colors.white;
  //                     }
  //                     return Colors.black;
  //                   }),
  //                   backgroundColor: MaterialStateProperty.all(
  //                       const Color.fromARGB(255, 189, 182, 182)),
  //                   overlayColor: MaterialStateColor.resolveWith(
  //                       (states) => const Color.fromARGB(255, 5, 42, 105))),
  //               onPressed: () {},
  //               child: const Text(
  //                 "Celeritas",
  //               )),
  //           TextButton(
  //               style: ButtonStyle(
  //                   foregroundColor: MaterialStateProperty.resolveWith<Color>(
  //                       (Set<MaterialState> states) {
  //                     if (states.contains(MaterialState.hovered)) {
  //                       return Colors.white;
  //                     }
  //                     return Colors.black;
  //                   }),
  //                   backgroundColor: MaterialStateProperty.all(
  //                       const Color.fromARGB(255, 189, 182, 182)),
  //                   overlayColor: MaterialStateColor.resolveWith(
  //                       (states) => const Color.fromARGB(255, 5, 42, 105))),
  //               onPressed: () {},
  //               child: const Text(
  //                 "Magneta",
  //               )),
  //           TextButton(
  //               style: ButtonStyle(
  //                   foregroundColor: MaterialStateProperty.resolveWith<Color>(
  //                       (Set<MaterialState> states) {
  //                     if (states.contains(MaterialState.hovered)) {
  //                       return Colors.white;
  //                     }
  //                     return Colors.black;
  //                   }),
  //                   backgroundColor: MaterialStateProperty.all(
  //                       const Color.fromARGB(255, 189, 182, 182)),
  //                   overlayColor: MaterialStateColor.resolveWith(
  //                       (states) => const Color.fromARGB(255, 5, 42, 105))),
  //               onPressed: () {},
  //               child: const Text(
  //                 "RubberMan",
  //               )),
  //         ],
  //       ),
  //     ],
  //   ),
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 45,
            ),
            const Text(
              "Tour of Heroes",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 54, 117, 148),
                  fontSize: 30),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 189, 182, 182)),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 5, 42, 105))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DashboardPage(),
                          ));
                      //log("presss");
                      // setState(() {
                      //   tempcontainer = container1;
                      // });
                    },
                    child: const Text(
                      "Dashboard",
                    )),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.white;
                          }
                          return Colors.black;
                        }),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 189, 182, 182)),
                        overlayColor: MaterialStateColor.resolveWith(
                            (states) => const Color.fromARGB(255, 5, 42, 105))),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HeroesPage(),
                          ));
                    },
                    child: const Text(
                      "Heros",
                    )),
                Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
