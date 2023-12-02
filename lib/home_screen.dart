import 'package:flutter/material.dart';
import 'package:travel_wiki/btn_values.dart';
import 'package:travel_wiki/second_page.dart';
import 'package:travel_wiki/country_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      color: const Color.fromARGB(255, 61, 60, 63),
      child: Column(
        children: [
          Container(
            width: 400,
            height: 100,
            color: const Color.fromARGB(255, 19, 18, 18),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Travel",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 236, 231, 231),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    "lib/images/planet_earth.png",
                    height: 50,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Wiki",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 236, 231, 231),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Wrap(
                children: Btn.countries.map((team) {
                  return SizedBox(
                    width: screenSize.width / 4,
                    height: screenSize.height / 8,
                    child: buildButton(context, team),
                  );
                }).toList(),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildButton(context, Country country) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Material(
        color: Color.fromARGB(255, 122, 121, 121),
        clipBehavior: Clip.hardEdge,
        shape: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white24),
          borderRadius: BorderRadius.circular(35),
        ),
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SecondPage(country),
              ),
            );
          },
          child: Center(
            child: Image.asset(
              country.flag,
              width: 50,
              height: 50,
            ),
          ),
        ),
      ),
    );
  }
}
