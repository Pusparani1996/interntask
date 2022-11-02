import 'package:flutter/material.dart';
import 'package:interntask/detailpage.dart';
import 'package:interntask/main.dart';

class HeroesPage extends StatelessWidget {
  HeroesPage({super.key});
  List<Map<String, dynamic>> heroes = [
    {"id": "1", "text": "Dr Nice"},
    {"id": "2", "text": "Bombasto "},
    {"id": "3", "text": "Celerities"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.height,
            child: Scaffold(
              body: Column(
                children: [
                  const Expanded(
                    flex: 1,
                    child: Text(
                      "My Heroes",
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: ListView.builder(
                        itemCount: heroes.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => DetailPage(
                                          //heroes: heroes[index]["id"],
                                          ),
                                    ));
                              },
                              child: Container(
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:
                                      const Color.fromARGB(255, 245, 243, 243),
                                ),
                                child: Row(
                                  children: [
                                    Container(
                                        height: 30,
                                        width: 35,
                                        color: const Color.fromARGB(
                                            255, 40, 86, 124),
                                        child: Center(
                                            child: Text(
                                          heroes[index]["id"],
                                          style: const TextStyle(
                                              color: Colors.white),
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
                      ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
