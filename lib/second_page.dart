import 'package:flutter/material.dart';
import 'package:travel_wiki/country_model.dart';
import 'btn_values.dart';

class SecondPage extends StatelessWidget {
  const SecondPage(this.country, {super.key});

  final Country country;

  @override
  Widget build(context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 19, 18, 18),
        title: Text(
          country.name,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 236, 231, 231),
          ),
        ),
      ),
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        color: Color.fromARGB(255, 61, 60, 63),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            Image.asset(
              country.flag,
              width: 200,
              height: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 350,
              child: Text(
                country.info,
                style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 230, 224, 224),
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
