import 'package:flutter/material.dart';

class Questions extends StatefulWidget {
  late int selectedIndex;
  Questions(this.selectedIndex,{super.key});

  @override
  State<Questions> createState() => _QuestionsState(selectedIndex);
}

class _QuestionsState extends State<Questions> {
  late int selectedIndex;
  _QuestionsState(this.selectedIndex);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}