import 'package:flutter/material.dart';

import 'helpers.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double valueSlider = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  const Row(
                    children: [
                      WidgetGenre(icon: Icons.male, genre: 'MALE'),
                      WidgetGenre(icon: Icons.female, genre: 'FEMALE'),
                    ],
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    fit: StackFit.loose,
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: Text(
                          'HEIGHT',
                          style: TextStyle(
                              color: Color(0xFF8D8E98),
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 70, 5, 0),
                            child: Text(
                              '${valueSlider.round()}',
                              style: const TextStyle(
                                  // color: Color(0xFFFFFFFF),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
                            child: Text(
                              'cm',
                              style: TextStyle(
                                  color: Color(0xFF8D8E98),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24),
                            ),
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
                              child: Card(
                                elevation: 10,
                                color: Color(0x00111428),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                                child: SizedBox(
                                  width: double.infinity,
                                  height: 180,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(20, 140, 20, 0),
                        child: Slider.adaptive(
                          value: valueSlider,
                          max: 220.0,
                          activeColor: const Color.fromARGB(255, 197, 44, 90),
                          onChanged: (double value) {
                            setState(() {
                              valueSlider = value;
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  const Row(
                    children: [
                      MyWidget(myString: 'weight'),
                      MyWidget(myString: 'age'),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          width: double.infinity,
          height: 60,
          color: const Color.fromARGB(255, 197, 44, 90),
          child: const Center(
            child: Text(
              'CALCULATE YOUR BMI',
              style: TextStyle(
                // color: Color.fromARGB(255, 218, 216, 216),
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
