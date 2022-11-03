import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:interntask/button.dart';
import 'package:interntask/detailpage.dart';

import 'package:interntask/refactor.dart';

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
  Container tempcontainer = Container();
  Container container1 = Container(
    height: 120,
    child: Column(
      children: [
        Expanded(
          child: Text(
            "Top Heros",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Expanded(
          child: Container(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: name.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Topheros(name: name[index]["text"]),
                );
              },
            ),
          ),
        )

        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceAround,
        //   children: [
        //     TextButton(
        //         style: ButtonStyle(
        //             foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //                 (Set<MaterialState> states) {
        //               if (states.contains(MaterialState.hovered)) {
        //                 return Colors.white;
        //               }
        //               return Colors.black;
        //             }),
        //             backgroundColor: MaterialStateProperty.all(
        //                 const Color.fromARGB(255, 189, 182, 182)),
        //             overlayColor: MaterialStateColor.resolveWith(
        //                 (states) => const Color.fromARGB(255, 5, 42, 105))),
        //         onPressed: () {

        //         },
        //         child: const Text(
        //           "Bombasto",
        //         )),
        //     TextButton(
        //         style: ButtonStyle(
        //             foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //                 (Set<MaterialState> states) {
        //               if (states.contains(MaterialState.hovered)) {
        //                 return Colors.white;
        //               }
        //               return Colors.black;
        //             }),
        //             backgroundColor: MaterialStateProperty.all(
        //                 const Color.fromARGB(255, 189, 182, 182)),
        //             overlayColor: MaterialStateColor.resolveWith(
        //                 (states) => const Color.fromARGB(255, 5, 42, 105))),
        //         onPressed: () {},
        //         child: const Text(
        //           "Celeritas",
        //         )),
        //     TextButton(
        //         style: ButtonStyle(
        //             foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //                 (Set<MaterialState> states) {
        //               if (states.contains(MaterialState.hovered)) {
        //                 return Colors.white;
        //               }
        //               return Colors.black;
        //             }),
        //             backgroundColor: MaterialStateProperty.all(
        //                 const Color.fromARGB(255, 189, 182, 182)),
        //             overlayColor: MaterialStateColor.resolveWith(
        //                 (states) => const Color.fromARGB(255, 5, 42, 105))),
        //         onPressed: () {},
        //         child: const Text(
        //           "Magneta",
        //         )),
        //     TextButton(
        //         style: ButtonStyle(
        //             foregroundColor: MaterialStateProperty.resolveWith<Color>(
        //                 (Set<MaterialState> states) {
        //               if (states.contains(MaterialState.hovered)) {
        //                 return Colors.white;
        //               }
        //               return Colors.black;
        //             }),
        //             backgroundColor: MaterialStateProperty.all(
        //                 const Color.fromARGB(255, 189, 182, 182)),
        //             overlayColor: MaterialStateColor.resolveWith(
        //                 (states) => const Color.fromARGB(255, 5, 42, 105))),
        //         onPressed: () {},
        //         child: const Text(
        //           "RubberMan",
        //         )),
        //   ],
        // ),
      ],
    ),
  );
  Container container2 = Container(
    height: 400,
    child: Column(
      children: [
        const Expanded(
          flex: 2,
          child: SizedBox(
            //height: 26,
            child: Text(
              "My Heroes",
              style: TextStyle(fontSize: 24),
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Container(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: heroes.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 3, right: 7),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailPage(),
                          ));
                    },
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 245, 243, 243),
                      ),
                      child: Row(
                        children: [
                          Container(
                              height: 30,
                              width: 35,
                              color: const Color.fromARGB(255, 40, 86, 124),
                              child: Center(
                                  child: Text(
                                heroes[index]["id"],
                                style: const TextStyle(color: Colors.white),
                              ))),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(heroes[index]["text"]),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ],
    ),
  );

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
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) => DashboardPage(),
                      //     ));
                      //log("presss");
                      setState(() {
                        tempcontainer = container1;
                      });
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
                      setState(() {
                        tempcontainer = container2;
                      });
                    },
                    child: const Text(
                      "Heros",
                    )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            tempcontainer
          ],
        ),
      ),
    );
  }
}
