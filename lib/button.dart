import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:interntask/detailpage.dart';
import 'package:interntask/main.dart';

class Topheros extends StatelessWidget {
  final String name;
  Topheros({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
        child: Text(
          name,
        ));
  }
}
