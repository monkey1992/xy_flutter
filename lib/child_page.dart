import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChildPage extends StatefulWidget {
  final String title;

  const ChildPage({Key key, this.title}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChildPageState();
  }
}

class _ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)), body: Text(widget.title));
  }
}
