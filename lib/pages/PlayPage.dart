import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/player.dart';
import '../widgets/case.dart';
import '../widgets/dark.dart';

//nn

class PlayPage extends StatefulWidget {
  PlayPage(
      {super.key,
      this.xPlayerName = 'X-player',
      this.yPlayerName = 'O-player'});
  String yPlayerName;
  String xPlayerName;

  @override
  State<PlayPage> createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  bool dark_mode = true;
  Color nice = Color(0xFF615F5F);
  Color bed = Colors.white;
  Color? color1 = Colors.indigoAccent[700];
  Color color2 = const Color(0xFF132158);
  Color? color3 = Colors.cyan[400];
  Color br = Color.fromRGBO(223, 165, 101, 1.0);
  Color brpl = Color.fromRGBO(255, 207, 143, 1.0);
  List<String> myList = [
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
    "images/empty.png",
  ];

  Player xPlayer = Player('play1');
  Player yPlayer = Player('play2');

  void setValue(String value, int position) {
    setState(() {
      myList[position - 1] = value;
    });
  }

  String getValue(int position) {
    return myList[position - 1];
  }

  String msg = 'X-turn...';
  void setMsg(String value) {
    this.msg = value;
  }

  String getMsg() {
    return this.msg;
  }

  String firstTurn = "images/whiteX.png";
  void setTurn(String value) {
    firstTurn = value;
  }

  String getTurn() {
    return firstTurn;
  }

//eeeeeeeeeeeeee
  void Swap() {
    if (getTurn() == "images/whiteX.png") {
      setState(() {
        firstTurn = "images/whiteO.png";
      });
    } else {
      setState(() {
        firstTurn = "images/whiteX.png";
      });
    }
  }

  void think() {
    for (int i = 0; i < 9; i++) {
      setValue("images/empty.png", i + 1);
    }
  }

  int? xWin() {
    if (getValue(1) == "images/whiteX.png" &&
        getValue(2) == "images/whiteX.png" &&
        getValue(3) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(4) == "images/whiteX.png" &&
        getValue(5) == "images/whiteX.png" &&
        getValue(6) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(7) == "images/whiteX.png" &&
        getValue(8) == "images/whiteX.png" &&
        getValue(9) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(1) == "images/whiteX.png" &&
        getValue(4) == "images/whiteX.png" &&
        getValue(7) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(2) == "images/whiteX.png" &&
        getValue(5) == "images/whiteX.png" &&
        getValue(8) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(3) == "images/whiteX.png" &&
        getValue(6) == "images/whiteX.png" &&
        getValue(9) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(1) == "images/whiteX.png" &&
        getValue(5) == "images/whiteX.png" &&
        getValue(9) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else if (getValue(3) == "images/whiteX.png" &&
        getValue(5) == "images/whiteX.png" &&
        getValue(7) == "images/whiteX.png") {
      _theWiner(widget.xPlayerName);
      think();
      xPlayer.updateScore(3);
      setTurn("images/whiteX.png");
      return 1;
    } else {
      return 0;
    }
  }

  int? oWin() {
    if (getValue(1) == "images/whiteO.png" &&
        getValue(2) == "images/whiteO.png" &&
        getValue(3) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(4) == "images/whiteO.png" &&
        getValue(5) == "images/whiteO.png" &&
        getValue(6) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(7) == "images/whiteO.png" &&
        getValue(8) == "images/whiteO.png" &&
        getValue(9) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(1) == "images/whiteO.png" &&
        getValue(4) == "images/whiteO.png" &&
        getValue(7) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(2) == "images/whiteO.png" &&
        getValue(5) == "images/whiteO.png" &&
        getValue(8) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(3) == "images/whiteO.png" &&
        getValue(6) == "images/whiteO.png" &&
        getValue(9) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(1) == "images/whiteO.png" &&
        getValue(5) == "images/whiteO.png" &&
        getValue(9) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else if (getValue(3) == "images/whiteO.png" &&
        getValue(5) == "images/whiteO.png" &&
        getValue(7) == "images/whiteO.png") {
      _theWiner(widget.yPlayerName);
      think();
      yPlayer.updateScore(3);
      setTurn("images/whiteO.png");
      return 1;
    } else {
      return 0;
    }
  }

  draw() {
    if (getValue(1) != "images/empty.png" &&
        getValue(2) != "images/empty.png" &&
        getValue(3) != "images/empty.png" &&
        getValue(4) != "images/empty.png" &&
        getValue(5) != "images/empty.png" &&
        getValue(6) != "images/empty.png" &&
        getValue(7) != "images/empty.png" &&
        getValue(8) != "images/empty.png" &&
        getValue(9) != "images/empty.png" &&
        xWin() != 1 &&
        oWin() != 1) {
      _draw();
      xPlayer.updateScore(1);
      yPlayer.updateScore(1);
      _draw;
    }
  }

  void _theWiner(String name) {
    setState(() {
      showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Image.asset(
              'images/win.png',
              width: 100,
              height: 100,
            ),
            content: Text("${name} is won "),
            actions: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    for (int i = 1; i <= 9; i++) {
                      setValue("images/empty.png", i);
                    }
                    Navigator.pop(context);
                  });
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    });
  }

  void _draw() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Image.asset(
              'images/draw.png',
              width: 100,
              height: 100,
            ),
            content: Text("really good game for \n both of you"),
            actions: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    for (int i = 1; i <= 9; i++) {
                      setValue("images/empty.png", i);
                    }
                    Navigator.pop(context);
                  });
                },
                child: Text("OK"),
              ),
            ],
          );
        });
  }

  void _deleteAll() {
    showDialog(
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text("Worning"),
            content: Text("the result will be deleted,\nContinue ?? "),
            actions: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    xPlayer.score = 0;
                    yPlayer.score = 0;

                    for (int i = 1; i <= 9; i++) {
                      setValue("images/empty.png", i);
                    }
                    Navigator.pop(context);
                  });
                },
                child: Text("yes"),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No"),
              ),
            ],
          );
        });
  }

  Dark l = Dark(val: Icons.light_mode, col: Colors.blue);
  Dark d = Dark(val: Icons.dark_mode, col: Colors.blue);

  Widget build(BuildContext context) {
    Color bgOrg = dark_mode ? Colors.black : bed;
    Color bgCase = dark_mode ? Colors.black : brpl;
    Color bgMin = dark_mode ? nice : br;

    // String xImage = dark_mode ? "images/blackX.png" : "images/whiteX.png";
    // String oImage = dark_mode ? "images/blackO.png" : "images/whiteO.png";
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: bgOrg, //rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 340,
                  ),
                  Container(
                    height: 40,
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          dark_mode = !dark_mode;
                        });
                      },
                      child: (dark_mode ? d : l),
                    ),
                  ),
                  // InkWell(
                  //   onTap: () {
                  //     Navigator.push(
                  //         context,
                  //         MaterialPageRoute(
                  //           builder: (context) => HistoPage(
                  //             help1: widget.xPlayerName,
                  //             help2: widget.yPlayerName,

                  //           ),
                  //         ));
                  //   },
                  //   child: Container(
                  //     width: 50,
                  //     height: 50,
                  //     decoration: BoxDecoration(
                  //         color: Colors.transparent,
                  //         borderRadius: BorderRadius.circular(20)),
                  //     child: Center(
                  //       child: Icon(
                  //         Icons.align_horizontal_right_sharp,
                  //         color: Colors.amber,
                  //       ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 180,
                decoration: BoxDecoration(color: Colors.transparent),
                child: Row(
                  children: [
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                      width: 188.4,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: bgMin,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Case(
                                    player: "images/whiteX.png",
                                    bgcolor: Colors.transparent),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    xPlayer.getScore().toString(),
                                    style: TextStyle(
                                        fontSize: 33,
                                        color: bgMin,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Container(
                            child: Center(
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    widget.xPlayerName,
                                    style: TextStyle(
                                      color: bgMin,
                                      fontSize: 26,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Container(
                      //second
                      width: 188.4,
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 4,
                              ),
                              Container(
                                width: 60,
                                height: 60,
                                color: Colors.transparent,
                                child: Center(
                                  child: Text(
                                    yPlayer.getScore().toString(),
                                    style: TextStyle(
                                        color: bgMin,
                                        fontSize: 33,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Container(
                                width: 120,
                                height: 120,
                                decoration: BoxDecoration(
                                  color: bgMin,
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Case(
                                    player: "images/whiteO.png",
                                    bgcolor: Colors.transparent),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            widget.yPlayerName,
                            style: TextStyle(
                                color: bgMin,
                                fontSize: 26,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 7,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                      color: bgMin, borderRadius: BorderRadius.circular(30)),
                  width: 380,
                  height: 380,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            //11111111111111111111111111111111111111
                            onTap: () {
                              setState(
                                () {
                                  if (getValue(1) == "images/empty.png") {
                                    setValue(getTurn(), 1);
                                    Swap();
                                    xWin();
                                    oWin();
                                    draw();
                                  }
                                },
                              );
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(1),
                              txcolor: Colors.red,
                              tall: 120,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (getValue(2) == "images/empty.png") {
                                    setValue(getTurn(), 2);
                                    Swap();
                                    xWin();
                                    oWin();
                                    draw();
                                  }
                                },
                              );
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(2),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (getValue(3) == "images/empty.png") {
                                    setValue(getTurn(), 3);
                                    Swap();
                                    xWin();
                                    oWin();
                                    draw();
                                  }
                                },
                              );
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(3),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(
                                () {
                                  if (getValue(4) == "images/empty.png") {
                                    setValue(getTurn(), 4);
                                    Swap();
                                    xWin();
                                    oWin();
                                    draw();
                                  }
                                },
                              );
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(4),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (getValue(5) == "images/empty.png") {
                                  setValue(getTurn(), 5);
                                  Swap();
                                  xWin();
                                  oWin();
                                  draw();
                                }
                              });
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(5),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (getValue(6) == "images/empty.png") {
                                  setValue(getTurn(), 6);
                                  Swap();
                                  xWin();
                                  oWin();
                                  draw();
                                }
                              });
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(6),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (getValue(7) == "images/empty.png") {
                                  setValue(getTurn(), 7);
                                  Swap();
                                  xWin();
                                  oWin();
                                  draw();
                                }
                              });
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(7),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (getValue(8) == "images/empty.png") {
                                  setValue(getTurn(), 8);
                                  Swap();
                                  xWin();
                                  oWin();
                                  draw();
                                }
                              });
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(8),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (getValue(9) == "images/empty.png") {
                                  setValue(getTurn(), 9);
                                  Swap();
                                  xWin();
                                  oWin();
                                  draw();
                                }
                              });
                            },
                            child: Case(
                              bgcolor: bgCase,
                              player: getValue(9),
                              txcolor: Colors.blueGrey,
                              tall: 120,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.transparent,
                height: 169.38,
                child: Center(
                    child: Row(
                  children: [
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: bgMin,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            _deleteAll,
                          );
                        },
                        child: Center(
                          child: Icon(
                            Icons.replay,
                            size: 50,
                            color: bgOrg,
                          ),
                        ),
                      ), //kkkkkkkkkk
                    ),
                    SizedBox(
                      width: 40,
                    ),
                    Container(
                      width: 200,
                      height: 80,
                      decoration: BoxDecoration(
                        color: bgMin,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              for (int i = 0; i < 9; i++) {
                                setValue("images/empty.png", i + 1);
                              }
                            },
                          );
                        },
                        child: Center(
                          child: Text(
                            "New game",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: bgOrg),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
