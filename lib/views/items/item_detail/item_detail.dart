import 'package:flutter/material.dart';

class ItemDetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String item = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text(item),
      ),
      body: Container(),
    );
  }
}
