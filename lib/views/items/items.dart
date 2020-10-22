import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/shared/p_drawer/p_drawer.dart';
import 'package:playground/utils/routing_helper.dart';

class ItemsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: PDrawer(),
      appBar: AppBar(
        title: Text('Items'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Icon(
                CupertinoIcons.bag_fill,
                size: 128.0,
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Super Cool Weapon'),
              trailing: RaisedButton(
                child: Text('Info'),
                onPressed: () => RoutingHelper.push(
                    context, ItemsRoutingKey.detail.route,
                    arguments: 'Super Cool Weapon'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
