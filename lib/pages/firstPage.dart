import 'package:flutter/material.dart';

import 'PlayPage.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  final xPlayer = TextEditingController();
  final oPlayer = TextEditingController();

  void startGame() {
    final String xPlayerName = xPlayer.text.trim();
    final String oPlayerName = oPlayer.text.trim();

    if (xPlayerName.isNotEmpty && oPlayerName.isNotEmpty) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => PlayPage(
            xPlayerName: xPlayerName,
            yPlayerName: oPlayerName,
          ),
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Image.asset(
              'images/test.png',
              width: 100,
              height: 100,
            ),
            content: const Text('Please enter names for both players.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  "images/test09.jpg"), // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //image
                Image.asset(
                  'images/tic-tac-toe.png',
                  width: double.infinity,
                  height: 200,
                ),

                SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(121, 158, 158, 158),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: (xPlayer),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'First player',
                        ),
                        cursorColor: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(121, 158, 158, 158),
                        borderRadius: BorderRadius.circular(12)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TextField(
                        controller: oPlayer,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Second player'),
                        cursorColor: Colors.red,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                //Buttom
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {
                      startGame();
                    },
                    child: Container(
                      padding: EdgeInsetsDirectional.all(10),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(185, 0, 24, 159),
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                          child: Text(
                        "START",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
                //
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Go for fun",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
