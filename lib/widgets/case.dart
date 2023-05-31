import 'package:flutter/material.dart';

class Case extends StatefulWidget {
  Case(
      {super.key,
      required this.player,
      required this.bgcolor,
      this.txcolor = Colors.blue,
      this.tall = 126.7});
  double tall;
  String player;
  Color bgcolor;
  Color txcolor;
  @override
  State<Case> createState() => _CaseState();
}

class _CaseState extends State<Case> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.tall,
      width: widget.tall,
      decoration: BoxDecoration(
        color: widget.bgcolor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Center(
        child: Image(
          width: 100,
          height: 100,
          image: AssetImage(
            widget.player,
          ),
        ),
      ),
    );
  }
}
