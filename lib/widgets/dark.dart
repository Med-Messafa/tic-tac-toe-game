import 'package:flutter/material.dart';

class Dark extends StatefulWidget {
  Dark({super.key, required this.val, required this.col});
  IconData val = Icons.light_mode;
  Color col = Colors.transparent;

  @override
  State<Dark> createState() => _DarkState();
}

class _DarkState extends State<Dark> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      width: 40,
      height: 40,
      child: Icon(
        widget.val,
        color: widget.col,
        size: 30,
      ),
    );
  }
}
