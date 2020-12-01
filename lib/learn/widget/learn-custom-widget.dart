import 'package:flutter/material.dart';

class LearnCustomWidget extends StatelessWidget {
  LearnCustomWidget({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () {},
        child: Text(title));
  }
}
