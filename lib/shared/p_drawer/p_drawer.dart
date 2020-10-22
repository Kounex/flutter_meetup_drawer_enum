import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playground/utils/routing_helper.dart';

class PDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0),
              child: Image.asset('assets/images/bonfire.gif'),
            ),
            Divider(height: 0),
            Expanded(
              child: ListView.builder(
                itemCount: DrawerEntry.values.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(DrawerEntry.values[index].icon),
                  title: Text(DrawerEntry.values[index].name),
                  onTap: () => RoutingHelper.drawerNavigation(
                    context,
                    DrawerEntry.values[index],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
