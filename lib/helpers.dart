import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  final String myString;
  const MyWidget({super.key, this.myString = ""});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    String myString = widget.myString;

    return Expanded(
      flex: 1,
      child: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          const Card(
            elevation: 10,
            color: Color(0xFF111428),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(5),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 200,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 20),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                  child: FloatingActionButton(
                    onPressed: () {
                      setState(() => counter > 0 ? counter-- : counter = 0);
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    backgroundColor: const Color(0xFF1C1F32),
                    // foregroundColor: const Color(0xFFDBDBDE),
                    child: const Icon(Icons.remove),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    setState(() => counter++);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  backgroundColor: const Color(0xFF1C1F32),
                  // foregroundColor: const Color(0xFFDBDBDE),
                  child: const Icon(Icons.add),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 80),
            child: Column(
              children: [
                Text(
                  myString.toUpperCase(),
                  style: const TextStyle(
                      color: Color(0xFF8D8E98),
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  '$counter',
                  style: const TextStyle(
                      // color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold,
                      fontSize: 60),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class WidgetGenre extends StatefulWidget {
  final IconData icon;
  final String genre;
  const WidgetGenre({super.key, required this.icon, required this.genre});

  @override
  State<WidgetGenre> createState() => _WidgetGenreState();
}

class _WidgetGenreState extends State<WidgetGenre> {
  @override
  Widget build(BuildContext context) {
    IconData icon = widget.icon;
    String genre = widget.genre;

    return Expanded(
      flex: 1,
      child: Stack(
        alignment: Alignment.bottomCenter,
        fit: StackFit.loose,
        children: [
          Card(
            elevation: 10,
            color: const Color(0xFF1D1F33),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(5),
              ),
            ),
            child: SizedBox(
              width: double.infinity,
              height: 140,
              child: IconButton(
                onPressed: () {},
                icon: Icon(icon),
                iconSize: 80,
                // color: const Color(0xFFFFFFFF),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 0, 16),
            child: Text(
              genre,
              style: const TextStyle(
                  // color: Color(0xFFFFFFFF),
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
