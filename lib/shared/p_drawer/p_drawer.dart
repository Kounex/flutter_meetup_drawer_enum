import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/utils/routing_helper.dart';

class PDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView.builder(
        itemCount: DrawerEntry.values.length,
        itemBuilder: (context, index) => ListTile(
          leading: Icon(DrawerEntry.values[index].icon),
          title: Text(DrawerEntry.values[index].name),
          onTap: () =>
              Navigator.of(context).pushNamed(ItemsRoutingKey.detail.route.key),
        ),
      ),
    );
  }
}
