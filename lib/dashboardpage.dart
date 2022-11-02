import 'package:flutter/material.dart';
import 'package:interntask/detailpage.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
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
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
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
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
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
                  onPressed: () {},
                  child: const Text(
                    "Heros",
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Top Heroes",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
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
                          builder: (context) => DetailPage(),
                        ));
                  },
                  child: const Text(
                    "Bombasto",
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
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
                          builder: (context) => DetailPage(),
                        ));
                  },
                  child: const Text(
                    "Celeritas",
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
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
                          builder: (context) => DetailPage(),
                        ));
                  },
                  child: const Text(
                    "Magneta",
                  )),
              ElevatedButton(
                  style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.resolveWith<Color>(
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
                  onPressed: () {},
                  child: const Text(
                    "RubberMan",
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
