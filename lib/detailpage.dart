import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
  });
  //final List<Map<String, dynamic>> heroes;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  final myController = TextEditingController();
  @override
  // void dispose() {
  //   // Clean up the controller when the widget is disposed.
  //   myController.dispose();
  //   super.dispose();
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
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
                      Navigator.pop(context);
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
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "Heros",
                    )),
              ],
            ),

            // Container(
            //   height: 30,
            //   width: MediaQuery.of(context).size.width * 0.6,
            //   child: const TextField(
            //     decoration: InputDecoration(
            //       fillColor: Colors.white,
            //       border: OutlineInputBorder(),
            //       labelText: "MAGNETA Details",
            //     ),
            //   ),
            // ),
            const Text(
              "Details",
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text('id :'),
            const SizedBox(
              height: 15,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                children: [
                  const Text(
                    "Hero Name :",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.6,
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "",
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back"))
          ],
        ),
      ),
    );
  }
}
